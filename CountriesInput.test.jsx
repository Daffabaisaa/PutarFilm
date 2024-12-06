import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import TabelCountries from './resources/js/Pages/TabelCountries'; // Import komponen TabelCountries
import fetchMock from 'jest-fetch-mock'; // Untuk memanipulasi fetch API

// Aktifkan fetch mock
fetchMock.enableMocks();

describe('TabelCountries Component', () => {
  beforeEach(() => {
    fetchMock.resetMocks(); // Reset mock sebelum setiap pengujian
  });

  test('berhasil menambahkan country baru ketika form disubmit', async () => {
    // Mock respons API POST untuk menambahkan country
    fetchMock.mockResponseOnce(
      JSON.stringify({ message: 'Country added successfully' }),
      { status: 201 }
    );

    // Mock data awal (kosong untuk memulai)
    const initialCountries = [];

    // Render komponen TabelCountries
    render(<TabelCountries countries={initialCountries} />);

    // Cari elemen input untuk country
    const inputElement = screen.getByPlaceholderText('Input here...');

    // Simulasikan pengguna mengetikkan nama country
    fireEvent.change(inputElement, { target: { value: 'Indonesia' } });

    // Cari tombol submit
    const submitButton = screen.getByRole('button', { name: /submit/i });

    // Klik tombol submit
    fireEvent.click(submitButton);

    // Tunggu hingga fetch dipanggil
    expect(fetchMock).toHaveBeenCalledWith('/countries', expect.objectContaining({
      method: 'POST',
      body: JSON.stringify({ country_name: 'Indonesia' }),
    }));

    // Pastikan nama country ditambahkan ke dalam daftar
    const newCountry = await screen.findByText('Indonesia');
    expect(newCountry).toBeInTheDocument();
  });

  test('gagal menambahkan country jika input kosong', () => {
    // Mock data awal
    const initialCountries = [];

    // Render komponen TabelCountries
    render(<TabelCountries countries={initialCountries} />);

    // Cari tombol submit
    const submitButton = screen.getByRole('button', { name: /submit/i });

    // Klik tombol submit tanpa mengisi input
    fireEvent.click(submitButton);

    // Pastikan tidak ada fetch API yang dipanggil
    expect(fetchMock).not.toHaveBeenCalled();

    // Pastikan pesan peringatan muncul (validasi HTML5)
    const inputElement = screen.getByPlaceholderText('Input here...');
    expect(inputElement).toBeInvalid();
  });
});

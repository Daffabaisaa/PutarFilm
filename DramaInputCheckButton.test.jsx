jest.mock('../../foto/logo.png', () => 'test-file-stub');
import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import DramaInput from './resources/js/Pages/DramaInput'; // Import komponen DramaInput

describe('DramaInput Checkbox Test', () => {
  test('User can select up to 4 checkboxes and see an error message on the 5th selection', () => {
    // Mock props untuk komponen DramaInput
    const genres = ['Action', 'Comedy', 'Drama', 'Fantasy', 'Horror', 'Thriller'];
    const mockSubmit = jest.fn();

    render(<DramaInput genres={genres} onSubmit={mockSubmit} />);

    // Ambil semua checkbox berdasarkan label
    const checkboxes = genres.map((genre) => screen.getByLabelText(genre));

    // Simulasikan memilih 4 checkbox
    fireEvent.click(checkboxes[0]); // Action
    fireEvent.click(checkboxes[1]); // Comedy
    fireEvent.click(checkboxes[2]); // Drama
    fireEvent.click(checkboxes[3]); // Fantasy

    // Periksa apakah keempat checkbox tersebut dipilih
    expect(checkboxes[0]).toBeChecked();
    expect(checkboxes[1]).toBeChecked();
    expect(checkboxes[2]).toBeChecked();
    expect(checkboxes[3]).toBeChecked();

    // Simulasikan memilih checkbox ke-5
    fireEvent.click(checkboxes[4]); // Horror

    // Periksa apakah pesan error muncul
    const errorMessage = screen.getByText('Maksimal hanya bisa memilih 4 genre.');
    expect(errorMessage).toBeInTheDocument();

    // Periksa bahwa checkbox ke-5 tidak terpilih
    expect(checkboxes[4]).not.toBeChecked();
  });
});

import React, { useState } from 'react';
import { usePage, router } from '@inertiajs/react';
import Navbar from '@/Components/Navbar';
import SidebarButton from '@/Components/SidebarButton';

const TabelAwards = () => {
    // Mengambil data dari backend menggunakan Inertia.js
    const { award, countries } = usePage().props;

    // State untuk form input baru
    const [country, setCountry] = useState('');
    const [year, setYear] = useState('');
    const [awards, setAwards] = useState('');

    // State untuk penyimpanan data yang sedang diedit di tabel
    const [editingAwardId, setEditingAwardId] = useState(null);
    const [editedData, setEditedData] = useState({});

    // Fungsi untuk menangani submit form input baru
    const handleSubmit = (e) => {
        e.preventDefault();
        const data = {
            country: country,
            award_year: year,
            award_title: awards,
        };

        // Kirim data ke backend
        router.post('/awards', data, {
            onSuccess: () => {
                resetForm();
            },
        });
    };

    // Fungsi untuk mereset form input
    const resetForm = () => {
        setCountry('');
        setYear('');
        setAwards('');
    };

    // Fungsi untuk mulai mengedit data dalam tabel
    const handleEdit = (item) => {
        setEditingAwardId(item.award_id);
        setEditedData({
            country: item.country,
            award_year: item.award_year,
            award_title: item.award_title,
        });
    };

    // Fungsi untuk menangani perubahan input pada mode edit di tabel
    const handleChange = (field, value) => {
        setEditedData((prevData) => ({
            ...prevData,
            [field]: value,
        }));
    };

    // Fungsi untuk menyimpan perubahan pada data di tabel
    const handleSave = (id) => {
        router.put(`/awards/${id}`, editedData, {
            onSuccess: () => {
                setEditingAwardId(null); // Selesai mode edit setelah berhasil
            },
        });
    };

    // Fungsi untuk menghapus data dari tabel
    const handleDelete = (id) => {
        if (confirm("Apakah Anda yakin ingin menghapus award ini?")) {
            router.delete(`/awards/${id}`, {
                onSuccess: () => {
                    // Reload data jika penghapusan berhasil
                },
            });
        }
    };

    return (
        <div>
            <div className='mb-4'>
                <Navbar />
            </div>
            <div className='ml-4'>
                <SidebarButton />
            </div>
            {/* Form Input Baru */}
            <form onSubmit={handleSubmit}>
                <div>
                    <div className="flex flex-wrap items-end gap-6 mb-6 md:grid-cols-2 lg:mx-40 sm:mx-10">
                        <div className="flex gap-6">
                            <div className="w-96">
                                <label htmlFor="country" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                                    Country
                                </label>
                                <select
                                    id="country"
                                    className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                    value={country}
                                    onChange={(e) => setCountry(e.target.value)}
                                    required
                                >
                                    <option value="">Select Country</option>
                                    {countries.map((country) => (
                                        <option key={country.country_name} value={country.country_name}>
                                            {country.country_name}
                                        </option>
                                    ))}
                                </select>
                            </div>
                            <div className="grow">
                                <label htmlFor="year" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                                    Year
                                </label>
                                <input
                                    type="text"
                                    id="year"
                                    className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                    placeholder="Input here..."
                                    value={year}
                                    onChange={(e) => setYear(e.target.value)}
                                    required
                                />
                            </div>
                        </div>
                    </div>
                    <div className="flex flex-wrap items-end gap-6 mb-6 md:grid-cols-2 lg:mx-40 sm:mx-10">
                        <div className="grow">
                            <label htmlFor="awards" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                                Awards
                            </label>
                            <input
                                type="text"
                                id="awards"
                                className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                placeholder="Input here..."
                                value={awards}
                                onChange={(e) => setAwards(e.target.value)}
                                required
                            />
                        </div>
                        <button
                            type="submit"
                            className="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                        >
                            Submit
                        </button>
                    </div>
                </div>
            </form>

            {/* Tabel Data */}
            <div className="relative overflow-x-auto shadow-md sm:rounded-lg lg:mx-40 sm:mx-10">
                <table className="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                    <thead className="text-xs text-gray-50 uppercase bg-blue-700 dark:bg-gray-700 dark:text-gray-400">
                        <tr>
                            <th scope="col" className="px-6 py-3">Countries</th>
                            <th scope="col" className="px-6 py-3">Years</th>
                            <th scope="col" className="px-6 py-3">Awards</th>
                            <th scope="col" className="px-6 py-3 text-right">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        {award.map((item) => (
                            <tr key={item.award_id} className="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                                <td className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                    {editingAwardId === item.award_id ? (
                                        <select
                                            value={editedData.country}
                                            onChange={(e) => handleChange('country', e.target.value)}
                                            className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                        >
                                            {countries.map((country) => (
                                                <option key={country.country_name} value={country.country_name}>
                                                    {country.country_name}
                                                </option>
                                            ))}
                                        </select>
                                    ) : (
                                        item.country
                                    )}
                                </td>
                                <td className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                    {editingAwardId === item.award_id ? (
                                        <input
                                            type="text"
                                            value={editedData.award_year}
                                            onChange={(e) => handleChange('award_year', e.target.value)}
                                            className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                        />
                                    ) : (
                                        item.award_year
                                    )}
                                </td>
                                <td className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                    {editingAwardId === item.award_id ? (
                                        <input
                                            type="text"
                                            value={editedData.award_title}
                                            onChange={(e) => handleChange('award_title', e.target.value)}
                                            className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                        />
                                    ) : (
                                        item.award_title
                                    )}
                                </td>
                                <td className="px-6 py-4 text-right">
                                    {editingAwardId === item.award_id ? (
                                        <button
                                            onClick={() => handleSave(item.award_id)}
                                            className="font-medium text-green-600 dark:text-green-500 hover:underline mr-2"
                                        >
                                            Save
                                        </button>
                                    ) : (
                                        <button
                                            onClick={() => handleEdit(item)}
                                            className="font-medium text-blue-600 dark:text-blue-500 hover:underline mr-2"
                                        >
                                            Edit
                                        </button>
                                    )}
                                    <button
                                        onClick={() => handleDelete(item.award_id)}
                                        className="font-medium text-red-600 dark:text-red-500 hover:underline"
                                    >
                                        Delete
                                    </button>
                                </td>
                            </tr>
                        ))}
                    </tbody>
                </table>
            </div>
        </div>
    );
};

export default TabelAwards;

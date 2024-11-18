import { useForm } from '@inertiajs/inertia-react';
import { usePage } from '@inertiajs/react';
import Navbar from '@/Components/Navbar';
import SidebarButton from '@/Components/SidebarButton';
import React, { useState } from 'react';

const TabelActors = () => {
    const { countries, cast } = usePage().props;
    const actors = cast || [];
    const [editActor, setEditActor] = useState(null);

    // Inisialisasi state dengan useForm
    const { data, setData, post, put } = useForm({
        country: '',
        name: '',
        birth: '',
        photo_url: '',
    });

    // Handler untuk submit form
    const handleSubmit = (e) => {
        e.preventDefault();
        if (editActor) {
            put(`/actors/${editActor.cast_id}`, data); // Update aktor jika dalam mode edit
            setEditActor(null); // Selesai edit
        } else {
            post('/actors', data); // Tambahkan aktor baru
        }
        setData({ country: '', name: '', birth: '', photo_url: '' }); // Reset form
    };

    // Fungsi untuk menghapus aktor
    const handleDeleteActor = async (actorId) => {
        if (confirm('Are you sure you want to delete this actor?')) {
            const response = await fetch(`/actors/${actorId}`, {
                method: 'DELETE',
                headers: {
                    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
                },
            });

            if (response.ok) {
                alert('Actor deleted successfully');
                Inertia.visit(route('actors.index'));
            } else {
                alert('Failed to delete actor');
            }
        }
    };

    // Fungsi untuk memasuki mode edit
    const handleEditActor = (actor) => {
        setEditActor(actor);
        setData({
            country: actor.country,
            name: actor.name,
            birth: actor.birth,
            photo_url: actor.photo_url,
        });
    };

    return (
        <div>
            <div className='mb-4'>
                <Navbar />
            </div>
            <div className='ml-4'>
                <SidebarButton />
            </div>
            {/* Input Form */}
            <form onSubmit={handleSubmit}>
                <div>
                    <div className="flex flex-wrap items-end gap-6 mb-6 md:grid-cols-2 lg:mx-40 sm:mx-10">
                        <div className="flex gap-6">
                            <div className="grow w-80">
                                <label htmlFor="country" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Country</label>
                                <select
                                    id="country"
                                    value={data.country}
                                    onChange={(e) => setData('country', e.target.value)}
                                    className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
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
                            <div className="grow w-96">
                                <label htmlFor="actor_name" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Actor Name</label>
                                <input
                                    type="text"
                                    id="actor_name"
                                    value={data.name}
                                    onChange={(e) => setData('name', e.target.value)}
                                    className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                    placeholder="Input here..."
                                    required
                                />
                            </div>
                            <div className="grow w-48">
                                <label htmlFor="birth" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Birth</label>
                                <input
                                    type="date"
                                    id="birth"
                                    value={data.birth}
                                    onChange={(e) => setData('birth', e.target.value)}
                                    className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                    required
                                />
                            </div>
                        </div>
                    </div>
                    <div className="flex flex-wrap items-center gap-6 mb-6 md:grid-cols-2 lg:mx-40 sm:mx-10">
                        <div className="flex gap-6 items-end">
                            <div className="grow w-96">
                                <label htmlFor="url_photo" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">URL Photo</label>
                                <input
                                    type="text"
                                    id="url_photo"
                                    value={data.photo_url}
                                    onChange={(e) => setData('photo_url', e.target.value)}
                                    className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                    placeholder="Input URL here..."
                                    required
                                />
                            </div>
                            <button
                                type="submit"
                                className="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                            >
                                {editActor ? 'Update' : 'Submit'}
                            </button>
                        </div>
                    </div>
                </div>
            </form>

            {/* Data Table */}
            <div className="relative overflow-x-auto shadow-md sm:rounded-lg lg:mx-40 sm:mx-10">
                <table className="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                    <thead className="text-xs text-gray-50 uppercase bg-blue-700 dark:bg-gray-700 dark:text-gray-400">
                        <tr>
                            <th scope="col" className="px-6 py-3">Countries</th>
                            <th scope="col" className="px-6 py-3">Actor Name</th>
                            <th scope="col" className="px-6 py-3">Photos</th>
                            <th scope="col" className="px-6 py-3">Birth</th>
                            <th scope="col" className="px-6 py-3 text-right">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        {actors.map((actor) => (
                            <tr key={actor.cast_id} className="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                                <td className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                    {editActor?.cast_id === actor.cast_id ? (
                                        <select
                                            value={data.country}
                                            onChange={(e) => setData('country', e.target.value)}
                                            className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg block w-full p-2.5"
                                        >
                                            {countries.map((country) => (
                                                <option key={country.country_name} value={country.country_name}>
                                                    {country.country_name}
                                                </option>
                                            ))}
                                        </select>
                                    ) : (
                                        actor.country
                                    )}
                                </td>
                                <td className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                    {editActor?.cast_id === actor.cast_id ? (
                                        <input
                                            type="text"
                                            value={data.name}
                                            onChange={(e) => setData('name', e.target.value)}
                                            className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg block w-full p-2.5"
                                        />
                                    ) : (
                                        actor.name
                                    )}
                                </td>
                                <td className="p-4">
                                    {editActor?.cast_id === actor.cast_id ? (
                                        <input
                                            type="text"
                                            value={data.photo_url}
                                            onChange={(e) => setData('photo_url', e.target.value)}
                                            className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg block w-full p-2.5"
                                        />
                                    ) : (
                                        <img src={actor.photo_url} className="w-16 md:w-32 max-w-full max-h-full" alt={actor.name} />
                                    )}
                                </td>
                                <td className="px-6 py-4 whitespace-nowrap dark:text-white">
                                    {editActor?.cast_id === actor.cast_id ? (
                                        <input
                                            type="date"
                                            value={data.birth}
                                            onChange={(e) => setData('birth', e.target.value)}
                                            className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg block w-full p-2.5"
                                        />
                                    ) : (
                                        actor.birth
                                    )}
                                </td>
                                <td className="px-6 py-4 text-right">
                                    {editActor?.cast_id === actor.cast_id ? (
                                        <>
                                            <button
                                                type="submit"
                                                onClick={handleSubmit}
                                                className="text-green-600 hover:text-green-900"
                                            >
                                                Update
                                            </button>
                                            <button
                                                className="text-red-600 hover:text-red-900 ml-4"
                                                onClick={() => setEditActor(null)}
                                            >
                                                Cancel
                                            </button>
                                        </>
                                    ) : (
                                        <>
                                            <button
                                                className="text-blue-600 hover:text-blue-900"
                                                onClick={() => handleEditActor(actor)}
                                            >
                                                Edit
                                            </button>
                                            <button
                                                className="text-red-600 hover:text-red-900 ml-4"
                                                onClick={() => handleDeleteActor(actor.cast_id)}
                                            >
                                                Delete
                                            </button>
                                        </>
                                    )}
                                </td>
                            </tr>
                        ))}
                    </tbody>
                </table>
            </div>
        </div>
    );
};

export default TabelActors;

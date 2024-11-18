import Navbar from '@/Components/Navbar';
import SidebarButton from '@/Components/SidebarButton';
import React, { useState, useEffect } from 'react';

const TabelGenres = ({ genres: initialGenres }) => {
    const [genre, setGenre] = useState('');
    const [genres, setGenres] = useState(initialGenres || []);
    const [editGenre, setEditGenre] = useState(null);
    const [newGenreName, setNewGenreName] = useState('');

    const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

    useEffect(() => {
        if (!initialGenres) {
            fetch('/genres')
                .then(response => response.json())
                .then(data => setGenres(data.genres))
                .catch(error => console.error('Error fetching genres:', error));
        }
    }, [initialGenres]);

    const handleSubmit = async (e) => {
        e.preventDefault();
        if (genre) {
            const response = await fetch('/genres', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': csrfToken,
                },
                body: JSON.stringify({ genre_name: genre }),
            });

            if (response.ok) {
                const result = await response.json();
                alert(result.message);
                setGenres([...genres, { genre_name: genre }]);
                setGenre('');
            } else {
                alert('Failed to add genre');
            }
        }
    };

    const handleDelete = async (genreName) => {
        const response = await fetch(`/genres/${encodeURIComponent(genreName)}`, {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-TOKEN': csrfToken,
            },
        });

        if (response.ok) {
            const result = await response.json();
            alert(result.message);
            setGenres(genres.filter(g => g.genre_name !== genreName));
        } else {
            alert('Failed to delete genre');
        }
    };

    const handleEdit = (genreName) => {
        setEditGenre(genreName);
        setNewGenreName(genreName);
    };

    const handleUpdate = async (editGenre, newGenreName) => {
        const response = await fetch(`/genres/${encodeURIComponent(editGenre)}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-TOKEN': csrfToken,
            },
            body: JSON.stringify({ new_genre_name: newGenreName }),
        });

        if (response.ok) {
            const result = await response.json();
            alert(result.message);
            setGenres(
                genres.map(g => (g.genre_name === editGenre ? { genre_name: newGenreName } : g))
            );
        } else {
            alert('Failed to update genre');
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
            <div className="lg:mx-40 sm:mx-10">
                <form onSubmit={handleSubmit}>
                    <div className="flex flex-wrap items-end gap-6 mb-6 md:grid-cols-2">
                        <div className="grow">
                            <label htmlFor="genre" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                                Genre
                            </label>
                            <input
                                type="text"
                                id="genre"
                                className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                placeholder="Input here..."
                                value={genre}
                                onChange={(e) => setGenre(e.target.value)}
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
                </form>

                <div className="relative overflow-x-auto shadow-md sm:rounded-lg">
                    <table className="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                        <thead className="text-xs text-gray-50 uppercase bg-blue-700 dark:bg-gray-700 dark:text-gray-400">
                            <tr>
                                <th scope="col" className="px-6 py-3">Genres</th>
                                <th scope="col" className="px-6 py-3 text-right">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            {genres.map((genreObj, index) => (
                                <GenreRow
                                    key={index}
                                    genre={genreObj.genre_name}
                                    onDelete={handleDelete}
                                    onEdit={handleEdit}
                                    onUpdate={handleUpdate}
                                    editGenre={editGenre}
                                    newGenreName={newGenreName}
                                    setNewGenreName={setNewGenreName}
                                />
                            ))}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    );
};

const GenreRow = ({ genre, onDelete, onEdit, onUpdate, editGenre, newGenreName, setNewGenreName }) => {
    const isEditing = editGenre === genre;

    return (
        <tr className="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
            <th scope="row" className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                {isEditing ? (
                    <input
                        type="text"
                        value={newGenreName}
                        onChange={(e) => setNewGenreName(e.target.value)}
                        className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg p-2.5"
                    />
                ) : (
                    genre
                )}
            </th>
            <td className="px-6 py-4 text-right">
                {isEditing ? (
                    <button
                        onClick={() => onUpdate(genre, newGenreName)}
                        className="font-medium text-green-600 dark:text-green-500 hover:underline"
                    >
                        Save
                    </button>
                ) : (
                    <>
                        <a href="#" onClick={() => onEdit(genre)} className="font-medium text-blue-600 dark:text-blue-500 hover:underline">
                            Edit
                        </a>
                        <span className="font-medium text-slate-600 dark:text-white"> | </span>
                        <button
                            onClick={() => onDelete(genre)}
                            className="font-medium text-red-600 dark:text-red-500 hover:underline"
                        >
                            Delete
                        </button>
                    </>
                )}
            </td>
        </tr>
    );
};

export default TabelGenres;


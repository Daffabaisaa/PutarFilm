import Navbar from '@/Components/Navbar';
import SidebarButton from '@/Components/SidebarButton';
import React from 'react';
import { Inertia } from '@inertiajs/inertia';

const TabelFilm = ({ film }) => {
    const handleAddNewDrama = () => {
        Inertia.visit('/films');
    };

    const handleEditFilm = (id) => {
        Inertia.visit(`/editfilm/${id}`);
    };

    const handleDeleteFilm = (id) => {    
        console.log("Deleting film with id: ", id);  // Debugging untuk cek ID
        if (confirm('Are you sure you want to delete this film?')) {
            Inertia.delete(`/filmcms/${id}`, {
                onSuccess: () => alert('Film deleted successfully'),
                onError: () => alert('Failed to delete film'),
                preserveScroll: true,
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
            <div className="lg:mx-40 sm:mx-10">
                <form>
                    <div className="flex flex-wrap items-end gap-6 mb-6 md:grid-cols-2">
                        <button
                            type="button"
                            onClick={handleAddNewDrama}
                            className="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                        >
                            Add New Drama
                        </button>
                    </div>
                </form>

                {/* Tabel Data Film */}
                <div className="relative overflow-x-auto shadow-md sm:rounded-lg">
                    <table className="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                        <thead className="text-xs text-gray-50 uppercase bg-blue-700 dark:bg-gray-700 dark:text-gray-400">
                            <tr>
                                <th scope="col" className="px-6 py-3">Title</th>
                                <th scope="col" className="px-6 py-3">Country</th>
                                <th scope="col" className="px-6 py-3">Release Year</th>
                                <th scope="col" className="px-6 py-3 text-right">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            {film.map((filmItem, index) => (
                                <tr key={index} className="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                                    <th scope="row" className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                        {filmItem.title}
                                    </th>
                                    <td className="px-6 py-4">
                                        {filmItem.country}
                                    </td>
                                    <td className="px-6 py-4">
                                        {filmItem.year}
                                    </td>
                                    <td className="px-6 py-4 text-right">
                                        <a 
                                            href="#" 
                                            onClick={() => handleEditFilm(filmItem.film_id)} 
                                            className="font-medium text-blue-600 dark:text-blue-500 hover:underline mr-2"
                                        >
                                            Edit
                                        </a>
                                        <span className="font-medium text-slate-600 dark:text-white"> | </span>
                                        <button
                                            onClick={() => handleDeleteFilm(filmItem.film_id)}
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
        </div>
    );
};

export default TabelFilm;



// import Navbar from '@/Components/Navbar';
// import SidebarButton from '@/Components/SidebarButton';
// import React from 'react';
// import { Inertia } from '@inertiajs/inertia';

// const TabelFilm = ({ film }) => {
//     const handleAddNewDrama = () => {
//         Inertia.visit('/films');
//     };

//     const handleEditFilm = (id) => {
//         Inertia.visit(`/editfilm/${id}`);
//     };

//     const handleDeleteFilm = (id) => {    
//         console.log("Deleting film with id: ", id);  // Debugging untuk cek ID
//         if (confirm('Are you sure you want to delete this film?')) {
//             Inertia.delete(`/filmcms/${id}`, {
//                 onSuccess: () => alert('Film deleted successfully'),
//                 onError: (errors) => {
//                     console.error("Failed to delete film", errors);
//                     alert('Failed to delete film');
//                 },
//                 preserveScroll: true,
//             });
//         }
//     };
    

//     return (
//         <div>
//             <div className='mb-4'>
//                 <Navbar />
//             </div>
//             <div className='ml-4'>
//                 <SidebarButton />
//             </div>
//             <div className="lg:mx-40 sm:mx-10">
//                 <form>
//                     <div className="flex flex-wrap items-end gap-6 mb-6 md:grid-cols-2">
//                         <button
//                             type="button"
//                             onClick={handleAddNewDrama}
//                             className="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
//                         >
//                             Add New Drama
//                         </button>
//                     </div>
//                 </form>

//                 {/* Tabel Data Film */}
//                 <div className="relative overflow-x-auto shadow-md sm:rounded-lg">
//                     <table className="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
//                         <thead className="text-xs text-gray-50 uppercase bg-blue-700 dark:bg-gray-700 dark:text-gray-400">
//                             <tr>
//                                 <th scope="col" className="px-6 py-3">Title</th>
//                                 <th scope="col" className="px-6 py-3">Country</th>
//                                 <th scope="col" className="px-6 py-3">Release Year</th>
//                                 <th scope="col" className="px-6 py-3 text-right">Action</th>
//                             </tr>
//                         </thead>
//                         <tbody>
//                             {film.map((filmItem) => (
//                                 <tr key={filmItem.film_id} className="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
//                                     <th scope="row" className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
//                                         {filmItem.title}
//                                     </th>
//                                     <td className="px-6 py-4">
//                                         {filmItem.country}
//                                     </td>
//                                     <td className="px-6 py-4">
//                                         {filmItem.year}
//                                     </td>
//                                     <td className="px-6 py-4 text-right">
//                                         <button
//                                             onClick={() => handleEditFilm(filmItem.film_id)} 
//                                             className="font-medium text-blue-600 dark:text-blue-500 hover:underline mr-2"
//                                         >
//                                             Edit
//                                         </button>
//                                         <span className="font-medium text-slate-600 dark:text-white"> | </span>
//                                         <button
//                                             onClick={() => handleDeleteFilm(filmItem.film_id)}
//                                             className="font-medium text-red-600 dark:text-red-500 hover:underline"
//                                         >
//                                             Delete
//                                         </button>
//                                     </td>
//                                 </tr>
//                             ))}
//                         </tbody>
//                     </table>
//                 </div>
//             </div>
//         </div>
//     );
// };

// export default TabelFilm;

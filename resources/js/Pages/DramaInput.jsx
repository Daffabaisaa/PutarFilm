import React from 'react';
import Select from 'react-select';
import { useForm } from '@inertiajs/react';
import Navbar from '@/Components/Navbar';
import SidebarButton from '@/Components/SidebarButton';

export default function DramaInput({ countries, genres, platforms, actors, awards }) {
  const { data, setData, post, processing, errors, reset } = useForm({
    title: '',
    altTitle: '',
    releaseYear: '',
    posterUrl: '',
    country: '',
    synopsis: '',
    trailerUrl: '',
    selectedGenres: [],
    selectedPlatforms: [],
    selectedActors: [],
    selectedAward: '',
  });

  // Handler untuk mengubah genre
  const handleGenreChange = (e) => {
    const genre = e.target.value;
    const isChecked = e.target.checked;

    if (isChecked) {
      if (data.selectedGenres.length < 4) {
        setData('selectedGenres', [...data.selectedGenres, genre]);
      } else {
        alert("Maksimal hanya bisa memilih 4 genre.");
      }
    } else {
      setData('selectedGenres', data.selectedGenres.filter((g) => g !== genre));
    }
  };

  // Handler untuk mengubah platform
  const handlePlatformChange = (e) => {
    const platform = e.target.value;
    const isChecked = e.target.checked;

    if (isChecked) {
      setData('selectedPlatforms', [...data.selectedPlatforms, platform]);
    } else {
      setData('selectedPlatforms', data.selectedPlatforms.filter((p) => p !== platform));
    }
  };

  // Handler untuk mengubah pilihan aktor
  const handleActorChange = (selectedOptions) => {
    // Ambil nilai actor yang dipilih
    const selectedActorNames = selectedOptions.map(option => option.value);
    setData('selectedActors', selectedActorNames);
  };

  const submit = (e) => {
    e.preventDefault();
    post(route('films.store'), {
      onSuccess: () => reset(),
    });
  };

  // Options untuk actors (sesuai format react-select)
  const actorOptions = actors.map(actor => ({
    value: actor.cast_id, // nilai yang akan dikirimkan
    label: actor.name, // label yang akan ditampilkan di dropdown
  }));

  return (
    <form onSubmit={submit}>
      <div>
        <div className='mb-4'>
          <Navbar />
        </div>
        <div className='ml-4 bg-gray-50'>
          <SidebarButton />
        </div>
        <div className="min-h-screen bg-gray-50 flex items-center justify-center py-6 px-4">
          <div className="w-full max-w-2xl bg-white p-6 rounded-lg shadow-md">
            <h1 className="text-2xl font-bold text-center mb-6">Add New Film</h1>
            
            {/* Title */}
            <div>
              <label htmlFor="title" className="block text-sm font-medium text-gray-700">
                Film Title
              </label>
              <input
                id="title"
                name="title"
                value={data.title}
                onChange={(e) => setData('title', e.target.value)}
                className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
                required
              />
              {errors.title && <p className="mt-2 text-sm text-red-600">{errors.title}</p>}
            </div>

            {/* Alternative Title */}
            <div>
              <label htmlFor="altTitle" className="block text-sm font-medium text-gray-700">
                Alternative Title
              </label>
              <input
                id="altTitle"
                name="altTitle"
                value={data.altTitle}
                onChange={(e) => setData('altTitle', e.target.value)}
                className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
              />
              {errors.altTitle && <p className="mt-2 text-sm text-red-600">{errors.altTitle}</p>}
            </div>

            {/* Release Year */}
            <div>
              <label htmlFor="releaseYear" className="block text-sm font-medium text-gray-700">
                Release Year
              </label>
              <input
                id="releaseYear"
                name="releaseYear"
                type="number"
                value={data.releaseYear}
                onChange={(e) => setData('releaseYear', e.target.value)}
                className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
                required
              />
              {errors.releaseYear && <p className="mt-2 text-sm text-red-600">{errors.releaseYear}</p>}
            </div>

            {/* Poster URL */}
            <div>
              <label htmlFor="posterUrl" className="block text-sm font-medium text-gray-700">
                Poster URL
              </label>
              <input
                id="posterUrl"
                name="posterUrl"
                type="url"
                value={data.posterUrl}
                onChange={(e) => setData('posterUrl', e.target.value)}
                className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
                required
              />
              {errors.posterUrl && <p className="mt-2 text-sm text-red-600">{errors.posterUrl}</p>}
            </div>

            {/* Country Dropdown */}
            <div>
              <label htmlFor="country" className="block text-sm font-medium text-gray-700">
                Country of Origin
              </label>
              <select
                id="country"
                name="country"
                value={data.country}
                onChange={(e) => setData('country', e.target.value)}
                className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
                required
              >
                <option value="" disabled>Select a country</option>
                {countries.map((country) => (
                  <option key={country.country_name} value={country.country_name}>
                    {country.country_name}
                  </option>
                ))}
              </select>
              {errors.country && <p className="mt-2 text-sm text-red-600">{errors.country}</p>}
            </div>

            {/* Genre Selection */}
            <div>
              <label className="block text-sm font-medium text-gray-700">Select Genre (Max 5)</label>
              <div className="grid grid-cols-2 gap-2 mt-2">
                {genres.map((genre) => (
                  <div key={genre.genre_name}>
                    <label className="inline-flex items-center">
                      <input
                        type="checkbox"
                        value={genre.genre_name}
                        checked={data.selectedGenres.includes(genre.genre_name)}
                        onChange={handleGenreChange}
                        disabled={!data.selectedGenres.includes(genre.genre_name) && data.selectedGenres.length >= 5}
                        className="form-checkbox text-indigo-600"
                      />
                      <span className="ml-2 text-gray-700">{genre.genre_name}</span>
                    </label>
                  </div>
                ))}
              </div>
              {errors.selectedGenres && <p className="mt-2 text-sm text-red-600">{errors.selectedGenres}</p>}
            </div>

            {/* Synopsis */}
            <div>
              <label htmlFor="synopsis" className="block text-sm font-medium text-gray-700">
                Synopsis
              </label>
              <textarea
                id="synopsis"
                name="synopsis"
                value={data.synopsis}
                onChange={(e) => setData('synopsis', e.target.value)}
                className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
                rows="4"
                required
              />
              {errors.synopsis && <p className="mt-2 text-sm text-red-600">{errors.synopsis}</p>}
            </div>

            {/* Actor Dropdown Searchable */}
            <div>
              <label className="block text-sm font-medium text-gray-700">
                Select Actors
              </label>
              <Select
                isMulti
                options={actorOptions}
                value={actorOptions.filter(option => data.selectedActors.includes(option.value))}
                onChange={handleActorChange}
                placeholder="Search and select actors"
                className="mt-2"
              />
              {errors.selectedActors && <p className="mt-2 text-sm text-red-600">{errors.selectedActors}</p>}
            </div>

            {/* Trailer URL */}
            <div>
              <label htmlFor="trailerUrl" className="block text-sm font-medium text-gray-700">
                Trailer URL
              </label>
              <input
                id="trailerUrl"
                name="trailerUrl"
                type="url"
                value={data.trailerUrl}
                onChange={(e) => setData('trailerUrl', e.target.value)}
                className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
                required
              />
              {errors.trailerUrl && <p className="mt-2 text-sm text-red-600">{errors.trailerUrl}</p>}
            </div>

            {/*Awards*/}
            <div>
              <label htmlFor="award" className="block text-sm font-medium text-gray-700">
                  Select Award
              </label>
              <select
                  id="award"
                  name="award"
                  value={data.selectedAward}
                  onChange={(e) => setData('selectedAward', e.target.value)}
                  className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
              >
                  <option value="" disabled>Select an award</option>
                  {awards.map((award) => (
                      <option key={award.award_id} value={award.award_id}>
                          {award.award_title} - {award.country} ({award.award_year})
                      </option>
                  ))}
              </select>
              {errors.selectedAward && <p className="mt-2 text-sm text-red-600">{errors.selectedAward}</p>}
          </div>

            {/* Platform Selection */}
            <div>
                <label className="block text-sm font-medium text-gray-700">Select Platform</label>
                <div className="grid grid-cols-2 gap-2 mt-2">
                  {platforms.map((platform) => (
                    <div key={platform.name_platform}>
                      <label className="inline-flex items-center">
                        <input
                          type="checkbox"
                          value={platform.name_platform}
                          checked={data.selectedPlatforms.includes(platform.name_platform)}
                          onChange={handlePlatformChange}
                          className="form-checkbox text-indigo-600"
                        />
                        <span className="ml-2 text-gray-700">{platform.name_platform}</span>
                      </label>
                    </div>
                  ))}
                </div>
                {errors.selectedPlatforms && <p className="mt-2 text-sm text-red-600">{errors.selectedPlatforms}</p>}
              </div>

            {/* Submit Button */}
            <button
              type="submit"
              disabled={processing}
              className="w-full py-2.5 bg-indigo-600 hover:bg-indigo-700 text-white rounded-md text-sm font-medium"
            >
              {processing ? 'Submitting...' : 'Add Film'}
            </button>
          </div>
        </div>
      </div>
    </form>
  );
}

// import React, { useEffect } from 'react';
// import Select from 'react-select';
// import { useForm } from '@inertiajs/react';
// import Navbar from '@/Components/Navbar';
// import SidebarButton from '@/Components/SidebarButton';

// export default function DramaInput({ countries, genres, platforms, actors, awards, film = null }) {
//   const { data, setData, post, processing, errors, reset, put } = useForm({
//     title: film?.title || '',
//     altTitle: film?.altTitle || '',
//     releaseYear: film?.releaseYear || '',
//     posterUrl: film?.posterUrl || '',
//     country: film?.country || '',
//     synopsis: film?.synopsis || '',
//     trailerUrl: film?.trailerUrl || '',
//     selectedGenres: film?.genres || [], // Pastikan array kosong di sini
//     selectedPlatforms: film?.platforms || [],
//     selectedActors: film?.actors || [],
//     selectedAward: film?.award || '',
// });

//   useEffect(() => {
//     if (film) {
//       // Set data jika film ada (artinya ini adalah proses edit)
//       setData({
//         title: film.title,
//         altTitle: film.altTitle,
//         releaseYear: film.releaseYear,
//         posterUrl: film.posterUrl,
//         country: film.country,
//         synopsis: film.synopsis,
//         trailerUrl: film.trailerUrl,
//         selectedGenres: film.genres,
//         selectedPlatforms: film.platforms,
//         selectedActors: film.actors,
//         selectedAward: film.award,
//       });
//     }
//   }, [film]);

// // Handler untuk mengubah genre
//   const handleGenreChange = (e) => {
//     const genre = e.target.value;
//     const isChecked = e.target.checked;

//     setData('selectedGenres', (prevGenres) => {
//         if (isChecked) {
//             // Tambahkan genre jika belum ada dan maksimal 5 genre belum tercapai
//             if (prevGenres.length < 5) {
//                 return [...prevGenres, genre];
//             } else {
//                 alert("Maksimal hanya bisa memilih 5 genre.");
//                 return prevGenres;
//             }
//         } else {
//             // Hapus genre jika tidak dicentang
//             return prevGenres.filter((g) => g !== genre);
//         }
//     });
//   };

//   // Handler untuk mengubah platform
//   const handlePlatformChange = (e) => {
//     const platform = e.target.value;
//     const isChecked = e.target.checked;

//     setData('selectedPlatforms', (prevPlatforms) => {
//         if (isChecked) {
//             // Tambahkan platform
//             return [...prevPlatforms, platform];
//         } else {
//             // Hapus platform jika tidak dicentang
//             return prevPlatforms.filter((p) => p !== platform);
//         }
//     });
//   };

//   const handleActorChange = (selectedOptions) => {
//     const selectedActorNames = selectedOptions.map(option => option.value);
//     setData('selectedActors', selectedActorNames);
//   };

//   const submit = (e) => {
//     e.preventDefault();
//     if (film) {
//       put(route('films.update', film.id), {
//         onSuccess: () => reset(),
//       });
//     } else {
//       post(route('films.store'), {
//         onSuccess: () => reset(),
//       });
//     }
//   };

//   // Options untuk actors (sesuai format react-select)
//   const actorOptions = actors.map(actor => ({
//     value: actor.cast_id, // nilai yang akan dikirimkan
//     label: actor.name, // label yang akan ditampilkan di dropdown
//   }));

//   return (
//     <form onSubmit={submit}>
//       <div>
//         <div className='mb-4'>
//           <Navbar />
//         </div>
//         <div className='ml-4 bg-gray-50'>
//           <SidebarButton />
//         </div>
//         <div className="min-h-screen bg-gray-50 flex items-center justify-center py-6 px-4">
//           <div className="w-full max-w-2xl bg-white p-6 rounded-lg shadow-md">
//             <h1 className="text-2xl font-bold text-center mb-6">Add New Film</h1>
            
//             {/* Title */}
//             <div>
//               <label htmlFor="title" className="block text-sm font-medium text-gray-700">
//                 Film Title
//               </label>
//               <input
//                 id="title"
//                 name="title"
//                 value={data.title}
//                 onChange={(e) => setData('title', e.target.value)}
//                 className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
//                 required
//               />
//               {errors.title && <p className="mt-2 text-sm text-red-600">{errors.title}</p>}
//             </div>

//             {/* Alternative Title */}
//             <div>
//               <label htmlFor="altTitle" className="block text-sm font-medium text-gray-700">
//                 Alternative Title
//               </label>
//               <input
//                 id="altTitle"
//                 name="altTitle"
//                 value={data.altTitle}
//                 onChange={(e) => setData('altTitle', e.target.value)}
//                 className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
//               />
//               {errors.altTitle && <p className="mt-2 text-sm text-red-600">{errors.altTitle}</p>}
//             </div>

//             {/* Release Year */}
//             <div>
//               <label htmlFor="releaseYear" className="block text-sm font-medium text-gray-700">
//                 Release Year
//               </label>
//               <input
//                 id="releaseYear"
//                 name="releaseYear"
//                 type="number"
//                 value={data.releaseYear}
//                 onChange={(e) => setData('releaseYear', e.target.value)}
//                 className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
//                 required
//               />
//               {errors.releaseYear && <p className="mt-2 text-sm text-red-600">{errors.releaseYear}</p>}
//             </div>

//             {/* Poster URL */}
//             <div>
//               <label htmlFor="posterUrl" className="block text-sm font-medium text-gray-700">
//                 Poster URL
//               </label>
//               <input
//                 id="posterUrl"
//                 name="posterUrl"
//                 type="url"
//                 value={data.posterUrl}
//                 onChange={(e) => setData('posterUrl', e.target.value)}
//                 className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
//                 required
//               />
//               {errors.posterUrl && <p className="mt-2 text-sm text-red-600">{errors.posterUrl}</p>}
//             </div>

//             {/* Country Dropdown */}
//             <div>
//               <label htmlFor="country" className="block text-sm font-medium text-gray-700">
//                 Country of Origin
//               </label>
//               <select
//                 id="country"
//                 name="country"
//                 value={data.country}
//                 onChange={(e) => setData('country', e.target.value)}
//                 className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
//                 required
//               >
//                 <option value="" disabled>Select a country</option>
//                 {countries.map((country) => (
//                   <option key={country.country_name} value={country.country_name}>
//                     {country.country_name}
//                   </option>
//                 ))}
//               </select>
//               {errors.country && <p className="mt-2 text-sm text-red-600">{errors.country}</p>}
//             </div>

//             {/* Genre Selection */}
//             <div>
//               <label className="block text-sm font-medium text-gray-700">Select Genre (Max 5)</label>
//               <div className="grid grid-cols-2 gap-2 mt-2">
//               {genres.map((genre) => (
//                   <div key={genre.genre_name}>
//                       <label className="inline-flex items-center">
//                           <input
//                               type="checkbox"
//                               value={genre.genre_name}
//                               checked={(data.selectedGenres || []).includes(genre.genre_name)}
//                               onChange={handleGenreChange}
//                               disabled={!data.selectedGenres?.includes(genre.genre_name) && data.selectedGenres?.length >= 5}
//                               className="form-checkbox text-indigo-600"
//                           />
//                           <span className="ml-2 text-gray-700">{genre.genre_name}</span>
//                       </label>
//                   </div>
//               ))}
//               </div>
//               {errors.selectedGenres && <p className="mt-2 text-sm text-red-600">{errors.selectedGenres}</p>}
//             </div>

//             {/* Synopsis */}
//             <div>
//               <label htmlFor="synopsis" className="block text-sm font-medium text-gray-700">
//                 Synopsis
//               </label>
//               <textarea
//                 id="synopsis"
//                 name="synopsis"
//                 value={data.synopsis}
//                 onChange={(e) => setData('synopsis', e.target.value)}
//                 className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
//                 rows="4"
//                 required
//               />
//               {errors.synopsis && <p className="mt-2 text-sm text-red-600">{errors.synopsis}</p>}
//             </div>

//             {/* Actor Dropdown Searchable */}
//             <div>
//               <label className="block text-sm font-medium text-gray-700">
//                 Select Actors
//               </label>
//               <Select
//                   isMulti
//                   options={actorOptions}
//                   value={actorOptions.filter(option => (data.selectedActors || []).includes(option.value))}
//                   onChange={handleActorChange}
//                   placeholder="Search and select actors"
//                   className="mt-2"
//               />
//               {errors.selectedActors && <p className="mt-2 text-sm text-red-600">{errors.selectedActors}</p>}
//             </div>

//             {/* Trailer URL */}
//             <div>
//               <label htmlFor="trailerUrl" className="block text-sm font-medium text-gray-700">
//                 Trailer URL
//               </label>
//               <input
//                 id="trailerUrl"
//                 name="trailerUrl"
//                 type="url"
//                 value={data.trailerUrl}
//                 onChange={(e) => setData('trailerUrl', e.target.value)}
//                 className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
//                 required
//               />
//               {errors.trailerUrl && <p className="mt-2 text-sm text-red-600">{errors.trailerUrl}</p>}
//             </div>

//             {/*Awards*/}
//             <div>
//               <label htmlFor="award" className="block text-sm font-medium text-gray-700">
//                   Select Award
//               </label>
//               <select
//                   id="award"
//                   name="award"
//                   value={data.selectedAward}
//                   onChange={(e) => setData('selectedAward', e.target.value)}
//                   className="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
//               >
//                   <option value="" disabled>Select an award</option>
//                   {awards.map((award) => (
//                       <option key={award.award_id} value={award.award_id}>
//                           {award.award_title} - {award.country} ({award.award_year})
//                       </option>
//                   ))}
//               </select>
//               {errors.selectedAward && <p className="mt-2 text-sm text-red-600">{errors.selectedAward}</p>}
//           </div>

//             {/* Platform Selection */}
//             <div>
//                 <label className="block text-sm font-medium text-gray-700">Select Platform</label>
//                 <div className="grid grid-cols-2 gap-2 mt-2">
//                 {platforms.map((platform) => (
//                     <div key={platform.name_platform}>
//                         <label className="inline-flex items-center">
//                             <input
//                                 type="checkbox"
//                                 value={platform.name_platform}
//                                 checked={(data.selectedPlatforms || []).includes(platform.name_platform)}
//                                 onChange={handlePlatformChange}
//                                 className="form-checkbox text-indigo-600"
//                             />
//                             <span className="ml-2 text-gray-700">{platform.name_platform}</span>
//                         </label>
//                     </div>
//                 ))}
//                 </div>
//                 {errors.selectedPlatforms && <p className="mt-2 text-sm text-red-600">{errors.selectedPlatforms}</p>}
//               </div>

//             {/* Tombol Submit */}
//             <button
//               type="submit"
//               disabled={processing}
//               className="w-full py-2.5 bg-indigo-600 hover:bg-indigo-700 text-white rounded-md text-sm font-medium"
//             >
//               {processing ? 'Submitting...' : film ? 'Update Film' : 'Add Film'}
//             </button>
//           </div>
//         </div>
//       </div>
//     </form>
//   );
// }
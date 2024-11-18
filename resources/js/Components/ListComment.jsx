// import React from 'react';

// export default function ListComment() {
//   return (
//     <div>
//       {/* Komentar */}
//       <div className="space-y-4">
//         <div className="flex">
//           <div className="w-8 h-8 rounded-full overflow-hidden">
//             <img
//               src="https://kilaskini.com/assets/berita/original/24973361291-cristiano-ronaldo-po_cd6d94c.jpg"
//               alt="User"
//               className="w-full h-full object-cover"
//             />
//           </div>
//           <div className="flex-grow ml-2">
//             Daffa (30/08/2024) Said : This Movie is Awesome
//             <div>⭐⭐⭐⭐⭐</div>
//           </div>
//         </div>
//       </div>
//     </div>
//   );
// }

import React from 'react';

export default function ListComment({ comment }) {
  // Fungsi untuk merender bintang berdasarkan rating
  const renderStars = (rating) => {
    const fullStars = Math.floor(rating); // Bintang penuh
    const halfStar = rating % 1 !== 0 ? 1 : 0; // Cek jika ada setengah bintang
    const emptyStars = 5 - fullStars - halfStar; // Sisa bintang kosong untuk total 5 bintang

    let stars = [];
    // Menambahkan bintang penuh
    for (let i = 0; i < fullStars; i++) {
      stars.push(<span key={`full-${i}`} className="text-yellow-500">&#9733;</span>);
    }
    // Menambahkan setengah bintang jika ada
    if (halfStar) {
      stars.push(<span key="half" className="text-yellow-500">&#189;</span>);
    }
    // Menambahkan bintang kosong
    for (let i = 0; i < emptyStars; i++) {
      stars.push(<span key={`empty-${i}`} className="text-gray-300">&#9733;</span>);
    }

    return stars;
  };

  return (
    <div className="space-y-4">
      <div className="flex items-center">
        <div className="w-8 h-8 rounded-full itr overflow-hidden">
          <img
            src={comment.user ? comment.user.profile_pic_url : ''}
            alt={comment.user ? comment.user.name : 'User'}
            className="w-full h-full object-cover"
          />
        </div>
        <div className="flex-grow ml-2">
          <div className="flex items-center">
            {renderStars(comment.rating)} {/* Menampilkan bintang sesuai rating */}
          </div>
          <div>
            <strong>{comment.user ? comment.user.name : 'Anonymous'}</strong> ({new Date(comment.created_at).toLocaleDateString()}) Said: {comment.comment}
          </div>
        </div>
      </div>
    </div>
  );
}




import React, { useEffect } from 'react';
import Navbar from '@/Components/Navbar';
import FilmDetail from '@/Components/FilmDetail';
import FilmTrailer from '@/Components/FilmTrailer';
import Comments from '@/Components/Comments';
import CommentForm from '@/Components/CommentForm';
import ListActor from "@/Components/ListActor";

function HalamanFilm(props) {
  const { film, auth, comments } = props; // pastikan `comments` tersedia di props

  // Menambahkan console.log untuk mengecek data comments
  useEffect(() => {
    console.log("Comments Data:", comments);
  }, [comments]);

  return (
    <div>
      <Navbar />
      <FilmDetail props={props} />
      <FilmTrailer props={props} />
      <ListActor props={props} />
      
      {/* Pastikan data komentar dikirimkan dengan benar ke komponen Comments */}
      <Comments comments={comments} />

      {/* Hanya tampilkan CommentForm jika user sudah login */}
      {auth.user ? (
        <CommentForm filmId={film.film_id} userId={auth.user.id} />
      ) : (
        <p>Login untuk memberi komentar.</p>
      )}
    </div>
  );
}

export default HalamanFilm;

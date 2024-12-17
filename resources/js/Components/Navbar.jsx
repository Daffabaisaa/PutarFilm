import React from 'react';
import { Link } from '@inertiajs/inertia-react'; // Impor Link dari Inertia
import logo from '../../foto/logo.png';

export default function Navbar(countrys) {
  return (
    <div className="bg-blue-950 py-3 flex justify-center items-center"> {/* Gunakan flex untuk posisi tengah */}
      <Link href="/" className='flex-none'>
        <img 
          src={logo}
          alt="Logo"
          className="h-20 w-auto"
        />
      </Link>
    </div>
  );
}

import React from 'react';

const SearchBar = () => (
  <div className="flex items-center p-4 bg-gray-100">
    <div className="flex-grow flex justify-center">
      <div className="flex items-center">
        <input type="text" placeholder="Cari film..." className="w-80 p-2 border border-gray-300 rounded-lg" />
        <button className="ml-2 p-2 bg-blue-500 text-white rounded-lg">Cari</button>
      </div>
    </div>
    <div className="ml-4">
      <a href="login.html" className="p-2 bg-blue-500 text-white rounded-lg text-xs">Login</a>
    </div>
  </div>
);

export default SearchBar;

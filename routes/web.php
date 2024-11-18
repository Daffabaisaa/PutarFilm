<?php

use App\Http\Controllers\CMSActorController;
use App\Http\Controllers\CMSAwardController;
use App\Http\Controllers\CMSCommentController;
use App\Http\Controllers\CMSCountryController;
use App\Http\Controllers\CMSGenreController;
use App\Http\Controllers\CMSUserController;
use App\Http\Controllers\FilmController;
use App\Http\Controllers\ProfileController;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Models\Country;
use Psy\Readline\Hoa\Console;

Route::get('/', [FilmController::class, 'index'])->name('home');

Route::get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::post('/film/{id}/comment', [FilmController::class, 'storeComment'])->name('film.comment.store');

Route::get('/login', function () {
    return Inertia::render('Auth/Login');
})->name('login');

Route::get('/film/{id}', [FilmController::class, 'show'])->name('film.show');
Route::get('/api/films', [FilmController::class, 'getAllFilms']);
Route::get('/api/countries', [FilmController::class, 'getCountries'])->name('countries.get');

Route::get('/api/comments', [FilmController::class, 'readComments']);



Route::get('/countries', [CMSCountryController::class, 'readCountry'])->name('countries.index'); // GET untuk melihat daftar country
Route::post('/countries', [CMSCountryController::class, 'storeCountry'])->name('countries.store'); // POST untuk menambahkan country
Route::delete('/countries/{country}', [CMSCountryController::class, 'destroyCountry'])->name('countries.destroy'); // DELETE untuk menghapus country
Route::put('/countries/{country}', [CMSCountryController::class, 'updateCountry']);

Route::get('/genres', [CMSGenreController::class, 'readGenres'])->name('genres.index');
Route::post('/genres', [CMSGenreController::class, 'storeGenre'])->name('genres.store'); 
Route::delete('/genres/{genre}', [CMSGenreController::class, 'destroyGenre'])->name('genres.destroy');
Route::put('/genres/{genre}', [CMSGenreController::class, 'updateGenre']);

Route::get('/actors', [CMSActorController::class, 'getAllActors'])->name('actors.index');
Route::post('/actors', [CMSActorController::class, 'storeActor'])->name('actors.store');
Route::delete('/actors/{actor}', [CMSActorController::class, 'destroyActor'])->name('actors.destroy');
Route::put('/actors/{actor}', [CMSActorController::class, 'updateActor'])->name('actors.update');

Route::get('/comments', [CMSCommentController::class, 'getAllComments'])->name('comments.index');
Route::put('/comments/{id}', [CMSCommentController::class, 'updateCommentStatus']);
Route::delete('/comments/{id}', [CMSCommentController::class, 'deleteComment']);

Route::get('/awards', [CMSAwardController::class, 'readAwards']);
Route::post('/awards', [CMSAwardController::class, 'createAward']);
Route::delete('/awards/{id}', [CMSAwardController::class, 'deleteAward'])->name('awards.delete');
Route::put('/awards/{id}', [CMSAwardController::class, 'updateAward'])->name('awards.update');

Route::get('/users', [CMSUserController::class, 'readUsers']);
Route::put('/users/{id}', [CMSUserController::class, 'update']);
Route::delete('/users/{id}', [CMSUserController::class, 'delete']);



Route::get('/filmcms', [FilmController::class, 'filmCms']);
Route::delete('/filmcms/{id}', [FilmController::class, 'deleteFilm']);

Route::get('/films', [FilmController::class, 'readInputFilm']);
// Route::post('/films', [FilmController::class, 'store'])->name('films.store');
// Route::get('/films/{film_id}/edit', [FilmController::class, 'editFilm'])->name('films.edit');
// Route::put('/films/{film}', [FilmController::class, 'update'])->name('films.update');

Route::get('/films/{film}/edit', [FilmController::class, 'edit'])->name('films.edit');
Route::post('/films', [FilmController::class, 'store'])->name('films.store');
Route::patch('/films/{film}', [FilmController::class, 'update'])->name('films.update');


require __DIR__.'/auth.php';

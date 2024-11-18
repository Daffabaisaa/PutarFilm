import React, { useState } from 'react';
import { usePage } from '@inertiajs/react';
import Navbar from '@/Components/Navbar';
import SidebarButton from '@/Components/SidebarButton';

const TabelComments = () => {
    const { comments: initialComments } = usePage().props; // Ambil data komentar dari props
    const [comments, setComments] = useState(initialComments); // Definisikan state untuk komentar
    const [searchTerm, setSearchTerm] = useState('');
    const [editingCommentId, setEditingCommentId] = useState(null);
    const [newStatus, setNewStatus] = useState('');

    const handleEditClick = (comment) => {
        setEditingCommentId(comment.comment_id);
        setNewStatus(comment.status);
    };

    const handleUpdateStatus = async (commentId) => {
        try {
            const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

            const response = await fetch(`/comments/${commentId}`, {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': csrfToken,
                },
                body: JSON.stringify({ status: newStatus }),
            });

            if (!response.ok) {
                const errorResponse = await response.json();
                console.error('Failed to update status:', errorResponse.message);
                alert(`Error: ${errorResponse.message}`);
            } else {
                setEditingCommentId(null);
                const updatedComments = comments.map(comment =>
                    comment.comment_id === commentId ? { ...comment, status: newStatus } : comment
                );
                setComments(updatedComments);
            }
        } catch (error) {
            console.error('Error updating status:', error);
            alert('An error occurred while updating the status. Please try again.');
        }
    };

    const handleDelete = async (commentId) => {
        try {
            const confirmDelete = window.confirm('Are you sure you want to delete this comment?');
            if (!confirmDelete) return;

            const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

            const response = await fetch(`/comments/${commentId}`, {
                method: 'DELETE',
                headers: {
                    'X-CSRF-TOKEN': csrfToken,
                },
            });

            if (!response.ok) {
                const errorResponse = await response.json();
                console.error('Failed to delete comment:', errorResponse.message);
                alert(`Error: ${errorResponse.message}`);
            } else {
                // Remove the deleted comment from state
                const updatedComments = comments.filter(comment => comment.comment_id !== commentId);
                setComments(updatedComments);
                alert('Comment deleted successfully.');
            }
        } catch (error) {
            console.error('Error deleting comment:', error);
            alert('An error occurred while deleting the comment. Please try again.');
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
            <div className="relative overflow-x-auto sm:rounded-lg lg:mx-40 sm:mx-10">
                <div className="flex items-center justify-between py-4 bg-white dark:bg-gray-900">
                    <button className="inline-flex items-center text-gray-500 bg-white border border-gray-300 rounded-lg text-sm px-3 py-1.5 hover:bg-gray-100 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:bg-gray-700">
                        Action
                        <svg className="w-2.5 h-2.5 ms-2.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
                            <path stroke="currentColor" strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M1 1l4 4 4-4" />
                        </svg>
                    </button>
                    <input
                        type="text"
                        value={searchTerm}
                        onChange={(e) => setSearchTerm(e.target.value)}
                        className="block w-80 px-3 py-2 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 dark:bg-gray-700 dark:border-gray-600 dark:text-white"
                        placeholder="Search for users"
                    />
                </div>
                <div className='rounded-lg'>
                    <table className="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                        <thead className="text-xs rounded-md text-gray-50 uppercase bg-blue-700 dark:bg-gray-700 dark:text-gray-400">
                            <tr>
                                <th className="px-6 py-3">Username</th>
                                <th className="px-6 py-3">Rate</th>
                                <th className="px-6 py-3">Drama</th>
                                <th className="px-6 py-3">Comment</th>
                                <th className="px-6 py-3">Status</th>
                                <th className="px-6 py-3 text-right">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            {comments.map((comment) => (
                                <tr key={comment.comment_id} className="bg-white dark:bg-gray-800 hover:bg-gray-50 dark:hover:bg-gray-600">
                                    <td className="px-6 py-4 font-medium text-gray-900 dark:text-white">{comment.user?.name || 'Unknown'}</td>
                                    <td className="px-6 py-4">{"⭐".repeat(comment.rating)}</td>
                                    <td className="px-6 py-4 text-gray-900 dark:text-white">{comment.film?.title || 'Unknown'}</td>
                                    <td className="px-6 py-4 text-gray-900 dark:text-white">{comment.comment}</td>
                                    <td className="px-6 py-4 text-gray-900 dark:text-white">
                                        {editingCommentId === comment.comment_id ? (
                                            <select
                                                value={newStatus}
                                                onChange={(e) => setNewStatus(e.target.value)}
                                                className="border border-gray-300 rounded px-2 py-1"
                                            >
                                                <option value="approved">Approved</option>
                                                <option value="unapproved">Unapproved</option>
                                            </select>
                                        ) : (
                                            comment.status
                                        )}
                                    </td>
                                    <td className="px-6 py-4 text-right">
                                        {editingCommentId === comment.comment_id ? (
                                            <button onClick={() => handleUpdateStatus(comment.comment_id)} className="text-blue-600 dark:text-blue-500 hover:underline mr-2">Update</button>
                                        ) : (
                                            <button onClick={() => handleEditClick(comment)} className="text-blue-600 dark:text-blue-500 hover:underline mr-2">Edit</button>
                                        )}
                                        <button onClick={() => handleDelete(comment.comment_id)} className="text-red-600 dark:text-red-500 hover:underline">Delete</button>
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

export default TabelComments;

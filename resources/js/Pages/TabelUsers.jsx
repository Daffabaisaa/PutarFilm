import React, { useState } from 'react';
import Navbar from '@/Components/Navbar';
import SidebarButton from '@/Components/SidebarButton';

const TabelUsers = ({ users }) => {
    const [usersList, setUsers] = useState(users);
    const [editUser, setEditUser] = useState(null);
    const [newUserStatus, setNewUserStatus] = useState('');

    const handleEdit = (user) => {
        setEditUser(user);
        setNewUserStatus(user.user_status);
    };

    const handleUpdate = async (user) => {
        try {
            const response = await fetch(`/users/${user.id}`, {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
                },
                body: JSON.stringify({ user_status: newUserStatus }),
            });

            if (!response.ok) {
                throw new Error('Failed to update user status');
            }

            const updatedUsers = usersList.map((u) =>
                u.id === user.id ? { ...u, user_status: newUserStatus } : u
            );
            setUsers(updatedUsers);
            setEditUser(null); // Hentikan mode edit

            alert('User status updated successfully.');
        } catch (error) {
            console.error('Error updating user status:', error);
            alert('Failed to update user status.');
        }
    };

    const handleDelete = async (userId) => {
        if (!window.confirm('Are you sure you want to delete this user?')) return;

        try {
            const response = await fetch(`/users/${userId}`, {
                method: 'DELETE',
                headers: {
                    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
                },
            });

            if (!response.ok) {
                throw new Error('Failed to delete user');
            }

            // Filter out the deleted user from the list
            const updatedUsers = usersList.filter((user) => user.id !== userId);
            setUsers(updatedUsers);

            alert('User deleted successfully.');
        } catch (error) {
            console.error('Error deleting user:', error);
            alert('Failed to delete user.');
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
                <div className="relative overflow-x-auto shadow-md sm:rounded-lg">
                    <table className="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                        <thead className="text-xs text-gray-50 uppercase bg-blue-700 dark:bg-gray-700 dark:text-gray-400">
                            <tr>
                                <th scope="col" className="px-6 py-3">Nama</th>
                                <th scope="col" className="px-6 py-3">Email</th>
                                <th scope="col" className="px-6 py-3">Role</th>
                                <th scope="col" className="px-6 py-3">Status</th>
                                <th scope="col" className="px-6 py-3 text-right">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            {usersList.map((user, index) => (
                                <UserRow
                                    key={index}
                                    user={user}
                                    onDelete={handleDelete}
                                    onEdit={handleEdit}
                                    onUpdate={handleUpdate}
                                    editUser={editUser}
                                    newUserStatus={newUserStatus}
                                    setNewUserStatus={setNewUserStatus}
                                />
                            ))}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    );
};

const UserRow = ({ user, onDelete, onEdit, onUpdate, editUser, newUserStatus, setNewUserStatus }) => {
    const isEditing = editUser === user;

    const handleChange = (e) => {
        setNewUserStatus(e.target.value);
    };

    return (
        <tr className="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
            <th scope="row" className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                {user.name}
            </th>
            <td className="px-6 py-4">{user.email}</td>
            <td className="px-6 py-4">{user.role}</td>
            <td className="px-6 py-4">
                {isEditing ? (
                    <select
                        name="user_status"
                        value={newUserStatus}
                        onChange={handleChange}
                        className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg p-2.5"
                    >
                        <option value="approved">Approved</option>
                        <option value="unapproved">Unapproved</option>
                    </select>
                ) : (
                    user.user_status
                )}
            </td>
            <td className="px-6 py-4 text-right">
                {isEditing ? (
                    <button
                        onClick={() => onUpdate(user)}
                        className="font-medium text-green-600 dark:text-green-500 hover:underline"
                    >
                        Save
                    </button>
                ) : (
                    <>
                        <a
                            href="#"
                            onClick={() => onEdit(user)}
                            className="font-medium text-blue-600 dark:text-blue-500 hover:underline"
                        >
                            Edit
                        </a>
                        <span className="font-medium text-slate-600 dark:text-white"> | </span>
                        <button
                            onClick={() => onDelete(user.id)}
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

export default TabelUsers;

import Checkbox from '@/Components/Checkbox';
import InputError from '@/Components/InputError';
import InputLabel from '@/Components/InputLabel';
import PrimaryButton from '@/Components/PrimaryButton';
import TextInput from '@/Components/TextInput';
import GuestLayout from '@/Layouts/GuestLayout';
import { Head, Link, useForm } from '@inertiajs/react';
import Navbar from '@/Components/Navbar';

export default function Register() {
    const { data, setData, post, processing, errors } = useForm({
        name: '',
        email: '',
        password: '',
        password_confirmation: '',
        role: 'USER',
        profile_pic_url: '',
    });

    const submit = (e) => {
        e.preventDefault();

        // Jika field profile_pic_url kosong, gunakan URL default
        if (!data.profile_pic_url) {
            setData('profile_pic_url', 'https://cdn-icons-png.flaticon.com/512/456/456283.png');
        }

        post(route('register'));
    };

    return (
        <>
            <Head title="Register" />
            <Navbar />

            <section className="mt-4 bg-gray-50 dark:bg-gray-900 min-h-screen flex items-center justify-center">
                <div className="w-full max-w-md p-6 bg-white rounded-lg shadow-md dark:bg-gray-800 dark:border dark:border-gray-700">
                    <h1 className="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">
                        Create an account
                    </h1>

                    <form onSubmit={submit} className="space-y-6 mt-4">
                        <div>
                            <InputLabel htmlFor="name" value="Name" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white" />
                            <TextInput
                                id="name"
                                type="text"
                                name="name"
                                value={data.name}
                                className="bg-gray-50 border border-gray-300 text-gray-900 rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                isFocused={true}
                                onChange={(e) => setData('name', e.target.value)}
                            />
                            <InputError message={errors.name} className="mt-2" />
                        </div>

                        <div>
                            <InputLabel htmlFor="email" value="Email" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white" />
                            <TextInput
                                id="email"
                                type="email"
                                name="email"
                                value={data.email}
                                className="bg-gray-50 border border-gray-300 text-gray-900 rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                onChange={(e) => setData('email', e.target.value)}
                            />
                            <InputError message={errors.email} className="mt-2" />
                        </div>

                        <div>
                            <InputLabel htmlFor="role" value="Role" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white" />
                            <select
                                id="role"
                                name="role"
                                value={data.role}
                                className="bg-gray-50 border border-gray-300 text-gray-900 rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                onChange={(e) => setData('role', e.target.value)}
                            >
                                <option value="USER">USER</option>
                                <option value="ADMIN">ADMIN</option>
                            </select>
                            <InputError message={errors.role} className="mt-2" />
                        </div>

                        <div>
                            <InputLabel htmlFor="profile_pic_url" value="Profile Picture URL" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white" />
                            <TextInput
                                id="profile_pic_url"
                                type="text"
                                name="profile_pic_url"
                                value={data.profile_pic_url}
                                className="bg-gray-50 border border-gray-300 text-gray-900 rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                placeholder="Enter URL or leave blank for default"
                                onChange={(e) => setData('profile_pic_url', e.target.value)}
                            />
                            <InputError message={errors.profile_pic_url} className="mt-2" />
                        </div>

                        <div>
                            <InputLabel htmlFor="password" value="Password" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white" />
                            <TextInput
                                id="password"
                                type="password"
                                name="password"
                                value={data.password}
                                className="bg-gray-50 border border-gray-300 text-gray-900 rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                onChange={(e) => setData('password', e.target.value)}
                            />
                            <InputError message={errors.password} className="mt-2" />
                        </div>

                        <div>
                            <InputLabel htmlFor="password_confirmation" value="Confirm Password" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white" />
                            <TextInput
                                id="password_confirmation"
                                type="password"
                                name="password_confirmation"
                                value={data.password_confirmation}
                                className="bg-gray-50 border border-gray-300 text-gray-900 rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                onChange={(e) => setData('password_confirmation', e.target.value)}
                            />
                            <InputError message={errors.password_confirmation} className="mt-2" />
                        </div>

                        <PrimaryButton disabled={processing} className="w-full py-2.5 bg-blue-950 hover:bg-blue-800 text-white rounded-lg text-sm font-medium">
                            Register
                        </PrimaryButton>

                        <p className="text-sm font-light text-gray-500 dark:text-gray-400 text-center">
                            Already have an account?{' '}
                            <Link
                                href={route('login')}
                                className="font-medium text-primary-600 hover:underline dark:text-primary-500"
                            >
                                Sign in
                            </Link>
                        </p>
                    </form>
                </div>
            </section>
        </>
    );
}

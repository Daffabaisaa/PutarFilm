import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import { Inertia } from '@inertiajs/inertia'; // Mock Inertia
import LoginButton from './resources/js/Components/LoginButton';

// Mock Inertia's visit function
jest.mock('@inertiajs/inertia', () => ({
  Inertia: {
    visit: jest.fn(), // Mock visit function
  },
}));

describe('LoginButton Component', () => {
  it('navigates to the login page when the button is clicked', () => {
    // Render the LoginButton component
    render(<LoginButton />);

    // Find the login button by its text
    const loginButton = screen.getByText('Login');

    // Simulate a click event on the button
    fireEvent.click(loginButton);

    // Expect Inertia.visit to be called with the login route
    expect(Inertia.visit).toHaveBeenCalledWith('/login');
  });
});

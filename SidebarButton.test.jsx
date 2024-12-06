import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import { Inertia } from '@inertiajs/inertia';
import SidebarButton from '../WebDevPraktik/resources/js/Components/SidebarButton';

// Mock Inertia.js
jest.mock('@inertiajs/inertia', () => ({
  Inertia: {
    visit: jest.fn(), // Mock fungsi visit
  },
}));

describe('SidebarButton Component', () => {
  test('navigates to /countries when "CMS Countries" is clicked', () => {
    // Render the component
    render(<SidebarButton />);

    // Simulate button click to open sidebar
    const sidebarToggleButton = screen.getByRole('button', { name: /menu/i });
    fireEvent.click(sidebarToggleButton);

    // Find the "CMS Countries" link and click it
    const countriesLink = screen.getByText('CMS Countries');
    fireEvent.click(countriesLink);

    // Assert Inertia.visit was called with the correct route
    expect(Inertia.visit).toHaveBeenCalledWith('/countries');
  });
});

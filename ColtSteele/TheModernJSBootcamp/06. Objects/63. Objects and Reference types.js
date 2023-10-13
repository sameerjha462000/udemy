/**
 * Objects are also reference types as well
 */

const palette = {
    red     : '#eb4d4b',
    yellow  : '#f9ca24',
    blue    : '#30336b'
};

const palette2 = palette; // palette and palette2 are pointing to the same object
palette2.green = '#ebf876';

console.log(palette);


// ROUGH WORK



# roman-numerals-converter
A function to convert from normal numbers to Roman Numerals. The Romans wrote numbers using letters - I, V, X, L, C, D, M. The function convert numbers not larger than about 3000.
I created a function that accepts a number and converts it to string. I loop through the strings used their index number to know their numerical representation. If index is, four it means the number is thousand then i check if the number is greater than 9 or is less than 5, or is 5, or 4, or greater than zero to give their Roman representations. If the number is zero I skip to the next string.
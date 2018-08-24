//--------------------Excercise 8 

/version that calculates the 'greater than' vector 
f: {[v;c]{(x+y)*y}\[`int$(v>c)]}

/version with 'greater than' vector already provided
g: {[v]{(x+y)*y}\[`int$(v)]}

show ""
show "Functions for exercise 8"
show "f[v;c] - function for finding N cosecutive True values for the logical condition that the float vector 'v' is greater than a constant value 'c'"
show "g[v] - more generalized function that accepts a list of boolean values and returns their N consecutive truth count"
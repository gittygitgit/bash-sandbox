The $ character introduces parameter expansion (as well as command / arithmetic substitution).

${parameter}.  parameter is either a shell parameter or an array reference.

Braces are optional in many cases.  Required if parameter is a positional one containing more 
than one digit, or if parameter is followed immediately by a character that's not part of the
parameter's name.

Parameter is substituted.




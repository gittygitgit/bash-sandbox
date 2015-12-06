#!/bin/bash
<<==============================================
Declaration

Usually, there's no need to declare a variable.  Simply
assign a value to a variable and it is declared.
==============================================
foo=1  # variable is created 
echo "$foo"


<<==============================================
Typing

Bash variables are by default untyped. 

You can change that behavior.
==============================================
# Declare an integer variable
declare -i num

num="sdf"
echo $num # prints 0 since the result of arithmetic evaluation of sdf is 0

num="123"
echo $num # prints 123 since the result of arithmetic evaulation of 123 string is 123


# Declare an array
declare -i arr


<<==============================================
Scope

Bash variables may be either local or global.

Local variables are local to the code block they are defined in.

Global variables are in scope for the entire script.
By default, variables are scoped to the process

==============================================




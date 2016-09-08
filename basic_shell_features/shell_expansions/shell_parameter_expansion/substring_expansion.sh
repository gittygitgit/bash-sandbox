!/bin/bash

string=01234567890abcdefgh
after7=${string:7}
echo $after7

[ "7890abcdefgh" == $after7 ] && echo "true"

[ "||" == "|${string:7:0}|" ] && echo "substring ends up being nothing"


[ ${string:7:2} == "78" ] && echo "78"

[ ${string:7:-2} == "7890abcdef" ] && echo "7890abcdef"

<< DOC
If offset is negative, you must separate it from the colon separator by a space
to avoid confusion with :-
DOC
[ ${string: -7} == "bcdefgh" ] && echo "bcdefgh"
[ -z ${string: -7:0} ] && echo "empty"

[ ${string: -7:2} == "bc" ] && echo "bc"
echo ${string: -7}
echo ${string: -7:2}

# Using positional parameters

set -- 01234567890abcdefgh
echo ${1:7}
[[ ${1:7} == "7890abcdefgh" ]] && echo "7890abcdefgh"

[[ ${1:7:2} == "78" ]] && echo "78"
[[ ${1: -7} == "bcdefgh" ]] && echo "bcdefgh"


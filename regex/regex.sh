<<====================================
Regular expressions

Patterns which are processed by a regex engine
for the purpose of matching text.

A pattern consists of character literal(s), operator(s), and
constructs. 
====================================



<<====================================
Three kinds of regular expression
- basic
- extended
- perl compatible regular expressions

perl expressions  
  supports single char char classes like \d, \w
====================================


<<====================================
CHARACTERS
====================================
# meta-characters -  characters which have special meaning inside regular expressions.
# escape - tells the engine to either interpret the following 
# character as either a special character or literally

# character class - matches any one of a group of characters.
# escape - tells the engine to either interpret the following 
# character as either a special character or literally


<<====================================
- Special Characters
====================================
# search for tab
echo "Hello	there"|grep \t

# search for newline
echo -e "Hello\r\nthere"|grep \n

<<====================================
- Literals
====================================
echo -e "Hello there\nMy name is Mike"|grep "\e" # prints both lines


<<====================================
- Character classes
====================================
# match any of these chars
echo "Hello there"|grep [abc] # returns nothing
echo "Hello there"|grep [def] # returns the line

# match lines having any of the chars not listed
grep [^HG] <<< '
Hello there
My name is Mike
Good day!
H
G
'
# single character classes (perl)
# search for digit
grep -P "\d" <<< '
one
1
two
2
three
3
'

# only lines containing word chars
grep -P "\w" <<< '
1

2

3

4

5
'

# only lines containing non-word chars
grep -P "\W" <<< '
1

2

3

4

5
'

# whitespace
echo "abcaxb    sadasf"|grep "b\s*s"

# word boundary matching
# before 1st char in string if first char is a word char
# after last word in string if last char is a word char
# between two chars in a string if one is a word char and other is a non-word char
# start / end of word matching
echo "abcaxb    sadasf yyy"|grep "b\b" # matches
echo "abcaxb    sadasf yyy"|grep "\bb" # doesn't match
grep "\bs" <<< '
abcasb two sad
sadasf
yyy
'





# range expression
grep [a-e] <<< '
one
two
three
four
five
six
seven
eight
nine
ten
eleven
twelve
thirteen
fourteen
fifteen
sixteen
'

# bracket expressions
# Named group of characters

grep [[:digit:]] text.txt


<<====================================
subexpressions

any valid regular expression pattern

Used to group a pattern and possibly reference via capture 
====================================

<<====================================
captures

A substring of a given string which matches a certain subexpression

Captures text matched by a subexpression to a numbered identifier
====================================



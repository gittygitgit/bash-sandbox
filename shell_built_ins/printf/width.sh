#!/bin/bash

# Max of 10 chars => truncates
printf "%.10s: Hello\n" 123456789123456

# Alignment isn't useful when using dot operator 
# Max of 10 chars, doesn't pad if less than 10 chars long
printf "%.10s: Hello\n" 12345
printf "%-.10s: Hello\n" 12345

# Dynamically assign length
# Strings will be padded if less than provided length, widths will be expanded if strings are > than provided width
printf "%*s: %*s\n" 10 ABCDEFGHIJKLMNOP 5 Testing
printf "%*s: %*s\n" 10 ABCDEF 5 Testing
printf "%-*s: %*s\n" 10 ABCDEF 5 Testing


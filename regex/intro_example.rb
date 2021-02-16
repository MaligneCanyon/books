# Check whether the letter i occurs three or more times in Mississippi

# When composing a complex regex, it's a good idea to first write out a
# textural description of the patterns that you will need to match:

# - an opening word boundary
# - at least 3x
#   - zero or more chars other than 'i'
#   - followed by an 'i'
#   - followed by zero or more chars other than 'i'
# - a closing word boundary

p !!(/\b([^i]*i[^i]*){3,}\b/ =~ 'Mississippi') # should be true ('i' occurs at least 3x)

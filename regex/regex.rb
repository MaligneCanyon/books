# rtn the number of occurences of the blk contents in the input str
# for regex-type blks, [negation, concatonation, alternation] are supported

# inputs:
# - str
# - blk
# outputs:
# - int
# reqs:
# - count the occurences of the expr passed in thru the blk
# - rtn the count
# rules:
# - expr can be a str or a regex
# struct:
# - str
# algo:
# - init a counter to 0
# - init an ndx at 0
# - for each substr str[ndx..-1]
#   - if the blk expr can be found in the substr
#     - if the blk expr is found at the current ndx
#       - incr the counter
#       - incr the ndx by 1 (scan ahead one char at a time)
#     - else
#       - incr the ndx by the find_ndx (jump to the next find)
#   - else
#     - break (there are no more matches)
# - rtn the counter

def count_matches(str)
  count = 0
  ndx = 0
  expr = yield
  while ndx < str.size do
    substr = str[ndx..-1]
    find_ndx = expr.class == Regexp ? (substr =~ expr) : substr.index(expr)
    break unless find_ndx
    # p "substr == #{str[ndx..-1]}, find_ndx == #{find_ndx}"
    if find_ndx == 0
      count += 1
      ndx += 1
    else
      ndx += find_ndx
    end
    # p "ndx == #{ndx}, count == #{count}"
  end
  count
end


str = '0x1234'
p count_matches(str) { /[^xX]/ }
p count_matches(str) { /[0-9]/ }
p count_matches(str) { 'x' }

str = <<~TEST_STR.chomp
  0x1234
  Too many XXXXXXXXXXxxxxxxXXXXXXXXXXXX to count.
  The quick brown fox jumps over the lazy dog
  THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG
TEST_STR
p count_matches(str) { /[a-wyz]/i }

str = 'catcatcattercat'
p count_matches(str) { /cat|tt/ }

str = 'cccc'
p count_matches(str) { /cc/ }

str = <<~TEST_STR.chomp
0x1234abcd
1,000,000,000s and 1,000,000,000s.
THE quick BROWN fox JUMPS over THE lazy DOG!
TEST_STR
p count_matches(str) { /[^a-z]/i }

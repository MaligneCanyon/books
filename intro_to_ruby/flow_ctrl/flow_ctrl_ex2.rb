# def upcap(str)
#   str.upcase! if str.length > 10 # wrong; mutates the str
#   return str
# end

def upcap(str)
  str.length > 10 ? str.upcase : str # rtn ALL CAPS vers of longer strs
end

str = "it's a long way to tipperary"
puts upcap(str)
puts str # not mutated

puts upcap("test")
puts upcap("a big test")
puts upcap("a really big test")
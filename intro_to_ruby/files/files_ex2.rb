require 'pathname'
# =>  true
d = Dir.new(".")
# => #<Dir:.>
while f = d.read do
  p "#{f} has ext .rb" if File.extname(f) == ".rb"
end

pn = Pathname.new(".")
# => #<Pathname:.>
pn.entries.each { |f| p "#{f} has ext .rb" if f.extname == ".rb" }

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.", :phone=>"123-234-3454"}
#  }


# create a hash from a one-dim array
# use optional params (or array ndx) as keys
def array_to_hash(arr, *keys)
  #p arr
  #p "keys: #{keys}"
  h = {}
  arr.each_with_index do |v, i|
    k = keys[i] ? keys[i] : i.to_s # specify the key
    h[k] = v
    #p "h[#{k}] = #{h[k]}"
  end
  return h
end
# a = ["a", "b", "c"]
# puts array_to_hash(a, "alpha", "beta")
# puts array_to_hash(a, "alpha", "beta", "gamma")
# puts array_to_hash(a, "alpha", "beta", "gamma", "delta")

# for each key (i.e. person) in the 'contacts' hash,
# move the 'contact_data' into the empty 'contacts' value sub-hash
contacts.each_with_index do |pair, i|
  contacts[pair[0]] = array_to_hash(contact_data[i], :email, :address, :phone)
end
p contacts
# see the Solution for a more succinct answer

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.", :phone=>"123-234-3454"}
#  }


contact_keys = contacts.keys
contact_data.each_with_index do |contact, ndx|
  contacts[contact_keys[ndx]][:email] = contact[0]
  contacts[contact_keys[ndx]][:address] = contact[1]
  contacts[contact_keys[ndx]][:phone] = contact[2]
end
p contacts

p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]
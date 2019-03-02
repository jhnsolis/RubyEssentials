#Hashes, also called Dictionaries
#https://ruby-doc.org/core-2.6.1/Hash.html

#Create them with the {} and => | Do not confuse with blocks!!!
editor_props = {"font" => "Arial", "Size" => 12, "Color" => "Red"}
puts editor_props.length #3
puts editor_props["Size"] #12

#Add/set a value
editor_props["Background"] = "Blue"
puts editor_props["Background"]

#Access a key that does not exists
puts editor_props["Position"] #Empty or nil is returned

#Print out the entire Hash using each_pair method
editor_props.each_pair do |key, value|
    puts "Key: #{key}, Value: #{value}"
end

#Create a hash using .new method which passessthe default value of the hash
word_frequency = Hash.new(0)
sentence = "Chica boom chica Boom"
sentence.split.each do |word|
    word_frequency[word.downcase] += 1
end

puts "Word frequency of sentence \'#{sentence}\'"
p word_frequency
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

puts "Word frequency of sentence: \'#{sentence}\'"
p word_frequency

#Order of putting things in a hash is mainteined
#You can use symbols for the key names of the hash (symbol:) NOT ':symbol'

family_tree = {oldest: "Jim", older: "Joe", younger: "Jack"} #Note the symbol:
family_tree[:youngest] = "Jeremmy" #use :symbol to access it
p family_tree #The order is mainteined, Jeremmy is the last one in the hash

#You can pass the hash as a parameter in the method
def adjust_colors(props = {foreground: "Red", background: "White"})
    puts "Foreground: #{props[:foreground]}" if props[:foreground]
    puts "Background: #{props[:background]}" if props[:background]
end

#Different ways to access the values
adjust_colors({:foreground => "Blue"})
adjust_colors background: "Yellow"
adjust_colors :background => "Gray"
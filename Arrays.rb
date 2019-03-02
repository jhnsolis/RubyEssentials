#Arrays are autoexpandable in Ruby
#Index can be a negative number or an array
#API: https://ruby-doc.com/core/Array.html

#heteregenus arrays: String integer and symbol in below example
het_arr = [1, "two", :three]
puts het_arr[1]

#Array of words negatively indexed
#Negative index, indicates start from the end
words = %w{what a great day today!}
puts words[-2]
#You can also ask for the first or last element
puts "#{words.first} - #{words.last}"

#Range of elements
#Go back 3 indexes and take two starting from there
p words[-3,2]

#Range type converted
p words[2..4]

#Join the elements by a separator:
p words.join(',')

#Modify arrays
#LIFO
stack = []; stack << "one"; stack.push("two")
puts stack.pop #Last element

#FIFO
queue = []; queue.push("one"); queue.push("two")
puts queue.shift #First element

#Sort elements
random_elements = [3,6,4,8,7].sort!.reverse!
p random_elements

#Get random digits from the array
p random_elements.sample(2)

#Arrays in ruby are auto expandable
puts random_elements.size
random_elements[7] = 30
p random_elements
puts random_elements.size

#Each
puts 'Each:'
random_elements.each{|elem| puts elem}

#Select
puts 'Select:'
a = [1,2,3,56,7]
new_arr = a.select{|num| num > 7}
p new_arr

#Reject
puts 'Reject:'
new_arr = a.select{|num| num > 3}
            .reject{|num| num.even?}
puts new_arr

#Map
#Maps elements in the array to a new array with those mapped elements
puts 'Map:'
new_arr = a.map {|elem| elem * 2} #Multiply elements by two
puts new_arr
#Ranges are usefule becasue you don't need to store the complete set od values in memmory, you just store the first and last element.

#You can declare them with two dots (Last element is included)
range = 1..10
puts range.max
puts range.include? 4

#When declared with three dots, last element is not included
puts (1...20) === 5.3 #Includes 5.3?
puts ('a'...'q') === 'q' #Includes q?
puts ('a'...'q').include? 'q'

#Create a range and extract two random digits from it
p ('a'..'z').to_a.sample(2)

#Case example
age = 50
case age
    when 0..12 then puts "Just a baby!"
    when 13..99 then puts "Young at hearth!"
    else puts "You're getting older"
end
#Declare variable
x = 10 

#FOR | x can be an integer like 3 or 5 literal
x.times {puts "Hello world"}

#If Else
if x == 3
    puts "x = 3"
elsif x == 10
    puts "x = 10"
else
    puts "x is not 3 or 10"
end

#Unless, similar to If not
unless x == 4
    puts "x is not 4"
end

while x > 9
    puts "x is greater than 9"
    x -= 1
end

until x >= 10
    puts "x is greater or equal 10"
    x += 1
end

y = 0

#Modifier form works for if, unless while and until
puts "One liner" if x == 10 and y == 0

my_memmory = 2
my_memmory *= 2 while my_memmory < 100
puts my_memmory

#TRUE and FALSE 
#Everything is true in Ruby except for false and nil literals
puts "0 is true" if 0
puts "String false is true" if "false"
puts "Empty string is true" if ""
puts "false is false" if false #Nothing printed
puts "nil is false" if nil #Nothing printed
puts "false is false" unless false
puts "nil is false" unless nil

#Tripple equals
if /than/ === "Jonathan"
    puts "than is contained in Jonathan"
end

if "jonathan" === "Jonathan"
    puts "jonathan equals Jonathan"
else
    puts "=== is not a operator for comparing strings"
end

if Integer === 21
    puts "However it does compare data types"
end

#Case
#1st flavor - Similar to IF statement

age = 32
case
    when age >= 32
        puts "Man you're old!"
    when 1 == 0
        puts "1 = 0"
    else
        puts "Default condition"
end

#2nd flavor - case uses a == to compare

name = "fisher"
case name
    when /fish/i then puts "=== working"
    when "Smith" then puts "Evaluates to false, this line is not printed"
end

#for loop is hardly used in Ruby
for i in 0..2
    puts i
end
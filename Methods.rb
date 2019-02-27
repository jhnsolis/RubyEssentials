# In ruby all methods belongs to a class
# Last sentence is the returned one
#Watch out spaces between method name and parenthesis, there should be none!!

def simple
    puts "No parens"
end

def simple1()
    puts "Yes parens"
end

#Call the methods
simple() #With or without parents will work
simple1
simple1()

#You can add strings too
def add(one, two)
    one + two
end

def divide(one, two)
    return "Cheater !!" if two == 0
    one / two
end

puts add(1, 2)
puts add("Hello ", "world")
puts divide(2, 0)
puts divide(8, 2)

#Expressive methods - return booleans
def can_devide_by?(number)
    return false if number.zero?
    true
end

puts can_devide_by?(0)
puts can_devide_by?(10)

#Default arguments
def factorial(n)
    n == 0 ? 1 : n * factorial(n-1)
end

#In this case n is set to 5 by default in case no value is passed
def factorial_with_default(n = 5)
    factorial(n)
end

puts factorial(5)
puts factorial_with_default
puts factorial_with_default(3)

#SPLAT
#This is used to passa variable number of arguments to the method using the star: *

def max(one_parameter, *numbers, antoher_param)
    #Receives a variable number or arguments in numbers variable
    numbers.max
end

puts max("Variable", 3, 6, 89, "arguments")
puts max("Variable", 3, 6, 89, 24, 35, 90, "arguments")
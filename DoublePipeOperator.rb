#|| Operator
#First evaluates the left side of the satement if it's true it will return it, otherwise it will the right side
#@x = @x || 5 Will return @x when @x is nil otherwise 5
#Short form:
#@x ||= 5

class Person
    attr_reader :age
    attr_accessor :name
    
    def initialize(name, age)
        @name = name
        self.age = age #self.age will call the age= method. That's why we require self
    end
    def age= (new_age)
        @age ||= 5 #This will work as the default
        @age = new_age unless new_age > 120
    end
end

jenna = Person.new("Jenna", 130)
puts "My name is #{jenna.name} and I'm #{jenna.age} years old" #Prints an age of 5 because 130 is too large
jenna.age = 20 #It will set age as 20 because it's not nil
puts "My name is #{jenna.name} and I'm #{jenna.age} years old"


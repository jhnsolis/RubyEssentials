#More control over data access
#'self' is used to refer to class itself, usually used for properties

class Person
    attr_reader :age
    attr_accessor :name
    
    def initialize(name, age)
        @name = name
        self.age = age #self.age will call the age= method. That's why we require self
    end
    def age= (new_age)
        @age = new_age unless new_age > 120
    end
end

jenna = Person.new("Jenna", 27)
puts "My name is #{jenna.name} and I'm #{jenna.age} years old"
jenna.age = 130 #Change of age is not allowed because it's greater than 120
puts "My name is #{jenna.name} and I'm #{jenna.age} years old"
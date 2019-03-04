#Classes, public acces to methods is set by default
class Person
    def initialize (name, age) #Constructor
        @name = name
        @age = age
    end
    def name
        @name
    end
    def name= (new_name)
        @name = new_name
    end
    def get_info
        @additional_info = "Interesting"
        "Name:  #{@name}, Age: #{@age}"
    end
end

person1 = Person.new("John", 17)
p person1.instance_variables
puts person1.get_info
p person1.instance_variables
puts person1.name
person1.name = "Mike"
puts person1.name

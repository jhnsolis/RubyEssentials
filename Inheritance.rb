#Use < to denote inheritance

class Dog #Inherits from object class
    def bark
        "barks loudly"
    end
    def run
        "Running"
    end
end

class Small_dog < Dog
    def bark #Overwrites parent bark
        "barks quietly"
    end
end

scooby = Dog.new
puts "#{scooby}1 #{scooby.bark}"
puts scooby.run

scrappy = Small_dog.new
puts "#{scrappy}2 #{scrappy.bark}"
puts scrappy.run
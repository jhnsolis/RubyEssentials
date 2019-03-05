#Class methods / variables are similar to 'static' ones in java
#You don'have to create an instance to access them
#You can declare them in 3 different ways:

class MathFunctions
    def self.double(var) #1 Using self
        times_called; var * 2;
    end
    class << self #2 Using << self
        def times_called
            @@times_called ||= 0; @@times_called += 1 #Use @@ to declare a class variable
        end
    end    
end

#Outside the class
def MathFunctions.tripple(var)
    times_called; var * 3
end

#No instance created
puts MathFunctions.double 5
puts MathFunctions.tripple 3
puts MathFunctions.times_called
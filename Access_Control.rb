#private, protected and public
#Similar to java
#Default is public
#Two ways to specify them

#1 starting from the keyword

class AccessControl
    private #Cannot be accessed from outside the class
        def private_method
            "Private"
        end
    protected
        def protected_method
            "Protected"
        end
    public
        def public_method
            "Plublic"
        end    
end

#2 Listing the method names based on it's symbol, comma  separated

class ListingAccessControl
    def private_method
        "Private"
    end
    private :private_method
end

#Exception to private control

class Person
    def initialize(age)
        self.age = age #EXCEPTION. You can call it using 'self.' only when it's a setter
        puts my_age
        #puts self.my_age #ILEGAL :: private method `my_age' called for #<Person:0x2fac360 @age=25> (NoMethodError)
    end
    private
        def my_age #Getter
            @age
        end
        def age=(age)
            @age = age
        end
    public
        def get_age #Exposes the age
            my_age
        end
end

person = Person.new(25)
#puts person.my_age #ILEGAL :: private method `my_age' called for #<Person:0x2fac360 @age=25> (NoMethodError)
#puts person.age #ILEGAL :: private method `my_age' called for #<Person:0x2fac360 @age=25> (NoMethodError)
puts person.get_age #This is LEGAL
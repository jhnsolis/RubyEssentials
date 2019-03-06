#Modules as a Mix in
#Share code between modules

module SayMyName
    attr_accessor :name
    def print_name
        puts "Name #{name}"
    end
end

class Person
    include SayMyName #This is a shared code from the module
end

class Company
    include SayMyName #This is a shared code from the module
end

#And can be used in the objects
person = Person.new
person.name = "Joe"
person.print_name

company = Company.new
company.name = "Facebook"
company.print_name
#Classes
#An easier way to access data

class Person
    attr_accessor :name, :age #This will create getter and setter
    attr_reader :height #Getter only
    attr_writer :weigth #Setter only
end

mike = Person.new
mike.name = "Mike"
mike.age = 23
puts mike.name
puts mike.age
mike.age = "Six"
puts mike.age
#mike.height = 1.7 #Error because there's not setter
puts mike.height
mike.weigth = 60
#puts mike.weigth #Error because there's no getter

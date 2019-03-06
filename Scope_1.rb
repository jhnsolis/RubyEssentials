#Scope of variables | they remain the same
#Scope of constants is different you can use them in the insides too

PI = 3.14 #Constants are defined with capital letters
NewConstant = "Outer Scope"
v1 = "Outside class"
module Test
    
    class MyClass
        
        def my_metod
            #p v1 #Exception undefined local variable or method `v1' 
            p v1 = "Inside class"
            p local_variables
        end
        
        def what_is_pi
            puts PI
        end
        
        def update_constant
            puts NewConstant
            #NewConstant = "Inner value" #dynamic constant assignment
            puts NewConstant # Inner value
        end
        
    end
    
end

p v1

obj = Test::MyClass.new
obj.my_metod

p local_variables
p self

obj.what_is_pi

puts NewConstant
obj.update_constant # Outer Scope | Because the change in update_constant only applies to that scope, not the outer one

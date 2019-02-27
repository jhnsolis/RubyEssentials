#Blocks - chuncks of code that will be excecuted and can be passed to the methods
#{} do end

#Single line block by convention use {}
2.times {puts "This is a block"}

#Mutiple line block by convention use do end
2.times do |index| #This block accepts a parameter
    if index > 0
        puts index
    end
end

#Same as above but in single line
2.times {|index| puts index if index > 0 }

#2 ways to use blocks

#1 Implicit
def two_times_implicit
    return "No block" unless block_given? #Check if a block was passed
    yield #If it was passed we'll excecute it
    yield
    #You can also do it as below and the result will be the same as above
    #2.times {yield}  
end

puts two_times_implicit #No block is passed => No block
puts two_times_implicit {print "Hello"} #Prints Hello two times

#2 Explicit, you actually declare that a block is passed (Always at the end of the parameter and using &)
def two_times_explicit(&i_am_a_block)
    return "No block" if i_am_a_block.nil?
    i_am_a_block.call
    i_am_a_block.call
end

puts two_times_explicit #No block is passed
two_times_explicit{ puts "Hello world" } #Use curly braces to pass the block
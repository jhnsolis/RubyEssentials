#Modules are like containers
#They are useful for sotoring classes and do not confuse with the names

module Sports
    class Match
        attr_accessor :score
    end
end

module Patterns
    class Match
        attr_accessor :complete
    end
end

match1 = Sports::Match.new #Do not just access it with Match.new because there are two Match Classes
match1.score = 45
puts match1.score

match2 = Patterns::Match.new
match2.complete = true
puts match2.complete

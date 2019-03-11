class Calculator
    
    attr_reader :name
    
    def initialize (name)
        @name = name
    end

    def add(one, two)
        one - two #This is wrong this method is supposed to add
    end

    def substract(one, two)
        one + two #This is wrong this method is supposed to substract
    end

    def divide(one,two)
        one / two
    end

end

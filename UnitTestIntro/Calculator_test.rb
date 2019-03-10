#Run this class to test Calculator.rb class
require 'test/unit'
require_relative 'Calculator'

class CalculatorTest < Test::Unit::TestCase

    def setup
        @calc = Calculator.new('Test')
    end
    
    def test_addition
        assert_equal 4, @calc.add(2, 2)
    end

    def test_substraction
        assert_equal 2, @calc.substract(4, 2)
    end

    def test_division
        assert_equal 2, @calc.divide(4, 2)
    end

    #There are many different types of assertions
    #Below we will check for a division by zero exception
    def test_dived_by_zero
        assert_raise ZeroDivisionError do
            @calc.divide(1, 0)
        end
    end

end

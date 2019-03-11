#This file will contain all the specs (aka: tests) for the calculator class
#Tu run it, go to the main folder /UnitTestIntro and use 'rspec' command

require 'rspec'
require_relative '../Calculator'

#You don't need to create a new class

describe Calculator do #All specs go into a describe block
                            #You can put any string instead of the Calculator contstant
    
    before {@calculator = Calculator.new ("RSpec Calculator")} #This happens before the test runs

    #Specifications:
    it "Should add two numbers correctly" do #This block is the actual test. Logic of the test goes here
        expect(@calculator.add(2, 2)).to eq 4 #.to method will compare against expectations, in this case: 4
    end

    it "Should substract two numbers correctly" do
        expect(@calculator.substract(4, 2)).to eq 2
    end

    it "Should divide two numbers correctly" do
        expect(@calculator.divide(4, 2)).to eq 2
    end

end

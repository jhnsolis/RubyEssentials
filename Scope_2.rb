#Scope inside a block have two different uses:
#1 Inherited from the outside by default

class BankAccount
    attr_accessor :id, :amount
    def initialize(id, amount)
        @id = id
        @amount = amount
    end
end

acct1 = BankAccount.new(123, 200)
acct2 = BankAccount.new(321, 100)
acct3 = BankAccount.new(421, -100)

accts = [acct1, acct2, acct3]

total_sum = 0
puts total_sum

accts.each do |eachAcct|
    total_sum += eachAcct.amount #total_sum is inherited from the outside, not like methods where this would be a different variable
end

puts total_sum #This will print the total added inside above block => 200
puts #Prints a blank line
#2 Blocks also have a local scope
#Parameters defined in a block have local scope

arr = [5, 4, 1]
cur_number =10
arr.each do |cur_number| #This is also the same name of above variable. Because it's being passed as a parameter to the block, outside variable will not be affected.
    new_var = 11 #However this is not available outside the block
    print cur_number.to_s + " " #=> 5 4 1
end

puts
#puts new_var #undefined local variable or method
puts cur_number #Not affected => 10
puts

adjustmet = 5
arr.each do |cur_number; adjustmet| # is passed as a parameter so it gets a local scope inside the block
   adjustmet = 10
   print "#{cur_number + adjustmet} " #=>15 14 11 That's: 5+10, 4+10, 1+10 from the original arr = [5, 4, 1]
end
puts
puts adjustmet #Not affected by the block => 5
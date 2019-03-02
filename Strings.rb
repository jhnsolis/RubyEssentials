#Strings

#Single quote show almost everything as is
#Double quote interpret special characters like \n \t; Allow interpolation
#escape with \

single_quote = 'Fly me to the moon \n Let me play among the stars. It\'s a sun'
double_quote = "Fly me to the moon \n Let me play among the stars. It\'s a sun"

puts single_quote
puts double_quote

#Interpolation
def multiply(one,two)
    "#{one} multiplied by #{two} equals #{one * two}"
end
puts multiply(3,2)
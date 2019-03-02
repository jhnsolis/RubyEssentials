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

#Using exclamation char (!) will provoke that string methods overwrite the source string

name = ' jon'
puts name.lstrip.capitalize
puts name #Variable was not affected
name.lstrip! #Note the (!) character, this causes the variable to be overwritten
puts name
name[0] = 'L' #Replaces first character
puts name

#%Q Allows multiline strings
cur_weather = %Q{It's a hot day outside
                grab your umbrellas}
cur_weather.lines do |line|
    line.sub! 'hot', 'rainy' #Replace hot with rainy
    puts "#{line.strip}" #Remove spaces from the begining of the sentence
end
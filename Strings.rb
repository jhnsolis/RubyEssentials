#Strings
#Strings API: https://ruby-doc.com/core/String.html

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

#Symbol - highly optimized strings, do not have to be pre-declared. The point is not the string itself but what it represents (a flag for instance)
#Unique and immutable
#:foo

#Method names are just symbols

#HINT
#If you want to see all the methods contained in a object, you can use: .methods it will show the names of the methods which are symbols

puts "\nMethods contained in a String object:"
print "hello".methods

#$ irb
#irb(main):001:0> "hello".methods
#=> [:unicode_normalize, :include?, :to_c, :unicode_normalize!, :unicode_normalized?, :%, :*, :+, :count, :partition, :unpack, :encode, :encode!, :next, :casecmp, :insert, :bytesize,
#:match, :succ!, :next!, :upto, :index, :rindex, :replace, :clear, :chr, :+@, :-@, :setbyte, :getbyte, :<=>, :<<, :scrub, :scrub!, :byteslice, :==, :===, :dump, :=~, :downcase, :[], :[]=, :upcase, :downcase!, :capitalize, :swapcase, :upcase!, :oct, :empty?, :eql?, :hex, :chars, :split, :capitalize!, :swapcase!, :concat, :codepoints, :reverse, :lines, :bytes, :prepend, :scan, :ord, :reverse!, :center, :sub, :freeze, :inspect, :intern, :end_with?, :gsub, :chop, :crypt, :gsub!, :start_with?, :rstrip, :sub!, :ljust, :length, :size, :strip!, :succ, :rstrip!, :chomp, :strip, :rjust, :lstrip!, :tr!, :chomp!, :squeeze, :lstrip, :tr_s!, :to_str, :to_sym, :chop!, :each_byte, :each_char, :each_codepoint, :to_s, :to_i, :tr_s, :delete, :encoding, :force_encoding, :sum, :delete!, :squeeze!, :tr, :to_f, :valid_encoding?, :slice, :slice!, :rpartition, :each_line, :b, :ascii_only?, :hash, :to_r, :<, :>, :<=, :>=, :between?, :instance_of?, :public_send, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :private_methods, :kind_of?, :instance_variables, :tap, :is_a?, :extend, :to_enum, :enum_for, :!~, :respond_to?, :display, :object_id, :send, :method, :public_method, :singleton_method, :define_singleton_method, :nil?, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :trust, :untrusted?, :methods, :protected_methods, :frozen?, :public_methods, :singleton_methods, :!, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]

#You can also grep them by a word:
#irb(main):004:0> "hello".methods.grep /case/
#=> [:casecmp, :downcase, :upcase, :downcase!, :swapcase, :upcase!, :swapcase!]
puts "\nMethods contained in a String object which contains the word 'case':"
print "hello".methods.grep /case/

#Manipulate files and handle exceptions

File.foreach("TestFile.txt") do |line|
    puts line #Prints line as you see it in the file
    p line #Show all characters
    p line.chomp #chops off new line character
    p line.split #Splits the line in an array of words
end

#Handle exceptions (Similar to Try Catch)
begin
    File.foreach("file_do_not_exists.txt") do |line|
        puts line.chomp
    end
rescue Exception => e
    puts "An error happened:"
    puts e.message    
end

#You can also check for the file existance, but what if the file exists but ther's a problem with permissions or the network.
if File.exists? "file_do_not_exists.txt"
    File.foreach(file_do_not_exists.txt) do |line|
        puts line
    end
else
    puts "File does not exists"
end

#Write to a file
#Ruby takes care of closing the file after the block ends
File.open("open_file.txt", "w") do |file| #w means write access
    file.puts("First line")
    file.puts("Second line")
end
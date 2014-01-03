require 'pry-byebug'

rows = gets.chomp.to_i
input = []
rows.times do
    input << gets.chomp
end
#issue with . under pound sign
if input[rows - 1] =~ /\./
    input[rows - 2] = input[rows - 1] 
end
rows.times do |i|
    if input[i+1] =~ /#/
        input[i] = input[i+1].gsub(/#/, '.')
        input[rows - 1] = input[i+1].gsub(/ /, '.').gsub(/#/, ' ')
    elsif input[i] =~ /#/
        input[i] = input[i]
    else input[i]
        input[i] = input[i]
    end
end
puts input

#Nuts and Bolts Challenge 12/11/13
require 'pry-byebug'
rows = gets.chomp.to_i
wrong, input2 = {}, {}
key1 = []
rows.times do |i| 
    input1 = gets.chomp.split(' ')
    key1 << input1[0]
    input2[key1[i]] = input1[1].to_i
    wrong.merge!(input2)
end
right, input4 = {}, {}
key2 = []
rows.times do |i|
    input3 = gets.chomp.split(' ')
    key2 << input3[0]
    input4[key2[i]] = input3[1].to_i 
    right.merge!(input4)
end
def comparison (right, wrong, rows, key1, key2)
    key1.sort!; key2.sort!
    rows.times do |i|
        if right[key2[i]] != wrong[key1[i]]
            difference = right[key2[i]] - wrong[key1[i]]
            puts "#{key1[i]} #{sprintf("%-+d", difference)}"
        end
    end
end
comparison(right, wrong, rows, key1, key2)

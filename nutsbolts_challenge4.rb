#Nuts and Bolts
require 'pry-byebug'

rows = gets.chomp.to_i
items, p = {}, []
rows.times do
    item, price = gets.chomp.split
    items[item] = price.to_i
end
p = []
rows.times do
    item, price = gets.chomp.split
    if items[item] != price.to_i
        p << "#{item} #{sprintf("%-+d", price.to_i - items[item])}\n"
    end
end
puts p

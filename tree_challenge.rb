#Tree Challenge 12/16/13 redddit
require 'pry'

keys = [:base, :foundation, :branch]

values = gets.chomp.split(" ")
input = []
input << values[0].to_i << values[1] << values[2]
index = Hash[*keys.zip(input).flatten]
def tree (s) 
    1.upto(s[:base]) do |i| 
        if i.odd?
            f = ((s[:base] - i) / 2) 
            f.times {print " "} 
            i.times do
                print s[:branch] 
            end
            print "\n"
        end
    end
    #base of tree
    b = ((s[:base] - 3) / 2) 
    b.times {print " "}
    3.times {print s[:foundation]}
    print "\n"
end

tree(index)

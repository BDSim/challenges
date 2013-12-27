#Tree Challenge 12/16/13 redddit
require 'pry-byebug'

input = gets.chomp.split(" ")
base = input[0].to_i
foundation, branch = input[1..2]

def tree (base, foundation, branch)
    1.upto(base) do |i|
        if i.odd?
            f = ((base - i) / 2)
            f.times {print " "}
            i.times do
                print branch
            end
            print "\n"
        end
    end
    #base of tree
    b = ((base - 3) / 2)
    b.times {print " "}
    3.times {print foundation}
    print "\n"
end

tree(base, foundation, branch)

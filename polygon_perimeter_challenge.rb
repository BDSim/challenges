#Polygon Perimeter Challenge
#Circumradius = center of a regular polygon to one of the vertices is related to the side length (s), where n (>3) is the number of sides
#equaiton = r = (s / (2sin pi/n))
require 'pry'
require 'pry-byebug'
keys = [:sides, :radius]
binding.pry
values = gets.strip.split(" ").map(&:to_f)
input = Hash[*keys.zip(values).flatten]
def circumradius (d)
    s = ((d[:radius]) * (2 * (Math.sin(Math::PI / d[:sides]))))
    perimeter = sprintf "%.3f", (s * d[:sides])
    puts perimeter
end
circumradius(input)

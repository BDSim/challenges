#Braille Challenge
#2x6 space-delimited characters
require 'pry-byebug'
val1, val2, val3 = []
val1 = gets.chomp.split(" ")
val2 = gets.chomp.split(" ")
val3 = gets.chomp.split(" ")

def braille (val1, val2, val3)
    code = []
    i = 0
    while val1[i] != nil
    code << val1[i] << val2[i] << val3[i]
    i += 1
    end
    decode(code)
end
def decode (code)
    letters = []
    while code.empty? == false
        word = code.shift(3).join("")
        alphabet = {'0.....' => 'a'}
        letters << alphabet[word]
    end
    english = letters.join("")
    output(english)
end 
def output (english)
    binding.pry
    puts english
end

braille(val1, val2, val3)


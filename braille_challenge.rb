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
        alphabet = {'0.....' => 'a', '0.0...' => 'b', '00....' => 'c', 
                    '00.0..' => 'd', '0..0..' => 'e', '000...' => 'f',
                    '0000..' => 'g', '0.00..' => 'h', '.00...' => 'i',
                    '.000..' => 'j', '0...0.' => 'k', '0.0.0.' => 'l',
                    '00..0.' => 'm', '00.00.' => 'n', '0..00.' => 'o',
                    '000.0.' => 'p', '00000.' => 'q', '0.000.' => 'r',
                    '.00.0.' => 's', '.0000.' => 't', '0...00' => 'u',
                    '0.0.00' => 'v', '.000.0' => 'w', '00..00' => 'x',
                    '00.000' => 'y', '0..000' => 'z'}
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


def caesar_cipher(str, shift)
  newStr = ''
  str.each_char do |char|
    char = char.ord
    if char.between?(97, 122)
      min = 97
    elsif char.between?(65, 90)
      min = 65
    else
      min = 0
    end
    if min == 65 || min == 97 
      char = min + ((char + shift - min) % 26)
    end
    newStr += char.chr
  end
  newStr
end

puts caesar_cipher('What a string!', 5)
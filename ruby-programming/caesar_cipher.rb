# https://www.theodinproject.com/courses/ruby-programming/lessons/caesar-cipher

def caesar_cipher(str, shift)
  encrypted_str = str.split('').map do |char|
    # Shift alpha characters.
    if char.match(/^[[:alpha:]]$/)
      # Handle wrapping from "Z" back to "A".
      if char.ord <= 90 && char.ord + shift > 90
        (65 + (char.ord + shift - 91) % 26).chr
      # Handle wrapping from "z" back to "a".
      elsif char.ord <= 122 && char.ord + shift > 122
        (97 + (char.ord + shift - 123) % 26).chr
      # Perform simple shift if wrapping is not required.
      else
        (char.ord + shift).chr
      end
    # Keep non-alpha characters the same.
    else
      char
    end
  end
  encrypted_str.join
end

puts caesar_cipher('What a string!', 5)  # Bmfy f xywnsl!
puts caesar_cipher('What a string!', 31) # Bmfy f xywnsl!

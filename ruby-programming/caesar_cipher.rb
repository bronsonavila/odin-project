# https://www.theodinproject.com/courses/ruby-programming/lessons/caesar-cipher

def caesar_cipher(str, shift)
  encrypted_str = str.split('').map do |char|
    # Do not shift non-alpha characters.
    next char if char.match(/^[[:alpha:]]$/).nil?

    if char.ord <= 90 && char.ord + shift > 90
      (65 + (char.ord + shift - 91) % 26).chr # Wrap from "Z" back to "A".
    elsif char.ord <= 122 && char.ord + shift > 122
      (97 + (char.ord + shift - 123) % 26).chr # Wrap from "z" back to "a".
    else
      (char.ord + shift).chr # Perform simple shift if wrapping is not required.
    end
  end

  encrypted_str.join
end

puts caesar_cipher('What a string!', 5)  # Bmfy f xywnsl!
puts caesar_cipher('What a string!', 31) # Bmfy f xywnsl!

# https://www.theodinproject.com/courses/ruby-programming/lessons/sub-strings?ref=lnav

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(str, dictionary)
  str_array = str.downcase.split
  dictionary.reduce(Hash.new(0)) do |result, entry|
    str_array.each { |word| result[entry] += 1 if word.include? entry }
    result
  end
end

puts substrings('below', dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

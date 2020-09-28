# https://www.theodinproject.com/courses/ruby-programming/lessons/sub-strings

dict = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(str, dict)
  str_array = str.downcase.split
  dict.reduce(Hash.new(0)) do |result, entry|
    str_array.each { |word| result[entry] += 1 if word.include? entry }
    result
  end
end

puts substrings('below', dict)
# {"below"=>1, "low"=>1}

puts substrings("Howdy partner, sit down! How's it going?", dict)
# {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3,
# "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}

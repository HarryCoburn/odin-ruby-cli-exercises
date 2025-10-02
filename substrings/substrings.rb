# Implement a method #substrings that takes a word as the first argument and then an 
# array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) that was found 
# in the original string and how many times it was found.



def substrings(str, substr_dictionary)  
  str.downcase.split(" ").each_with_object(Hash.new(0)) do |word, acc| # each_with_object is like reduce, but you don't have to return the final object
    substr_dictionary.each do |substr|
      acc[substr] += 1 if word.include?(substr)               
      end
    end     
end


substr_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", substr_dictionary)
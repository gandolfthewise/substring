require 'pry'

def substrings(words, dictionary)
  words_array = words.split(" ")
  my_hash = Hash.new(0)
  words_array.each do |word|
    dictionary.each do |i|
      if word.match(i)
        my_hash[i] += 1
      end
    end
  end
  puts my_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
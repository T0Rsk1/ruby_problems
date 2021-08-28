def substrings(word, dictionary)
  list = Hash.new(0)
  word.downcase!
  dictionary.each do |str| 
    arr = word.scan(str)
    list[str] = arr.size unless arr.empty?
  end
  list
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
print substrings("Howdy partner, sit down! How's it going?", dictionary)

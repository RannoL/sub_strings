dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  result_list = Hash.new 0 #Sets default for any key to 0. {} sets nil. 1 + nil = error
  string_arr = string.downcase.gsub(/\p{Punct}/, "").split

  string_arr.each do |string|
    dictionary.each do |word|
    if string[word]
      result_list[word] += 1
    end
  end 
end
  puts Hash[result_list.sort]
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
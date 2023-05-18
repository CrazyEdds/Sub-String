def substrings (input, dictionary)
    low_input = input.downcase
    filtered_dictionary = Hash.new
    dictionary.each do |vocab|
        matches = low_input.scan(/#{vocab}/)
        if matches.length > 0 then filtered_dictionary[vocab] = matches.length end
    end
    filtered_dictionary
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)


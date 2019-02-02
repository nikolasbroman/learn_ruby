def translate (string)
    string = string.split(" ")
    new_string = []
    string.each do |word|
        new_word = ""
        if (word[0] =~ /[aeiou]/)
            new_word = word
        elsif (word[0..1] == "qu")
            new_word = word[2..-1]+"qu"
        elsif (word[1] =~ /[aeiou]/)
            new_word = word[1..-1]+word[0]
        elsif (word[1..2] == "qu")
            new_word = word[3..-1]+word[0]+"qu"
        elsif (word[2]=~ /[aeiou]/)
            new_word = word[2..-1]+word[0..1]
        elsif
            new_word = word[3..-1]+word[0..2]
        end
        new_string<<new_word+"ay"
    end
    new_string.join(" ")
end





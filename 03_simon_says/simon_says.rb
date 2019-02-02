def echo (string)
    string
end

def shout (string)
    string.upcase
end

def repeat (string, repeats = 2)
    new_string = string
    (repeats-1).times do
        new_string += " #{string}"
    end
    new_string
end

def start_of_word (string, number_of_characters)
    string[0..number_of_characters-1]
end

def first_word (string)
    first_space = string.index(" ")
    string[0..first_space-1]
end

def little_word? (word)
    little_words = ["a", "is", "the", "and", "over", "under", "to"]
    little_words.each do |little_word|
        if (word == little_word)
            return true
        end
    end
    false
end

def titleize (string)
    string = string.split(" ")
    new_string = [string.shift.capitalize]
    string.each do |word|
        if (!little_word?(word))
            word = word.capitalize
        end
        new_string<<word
    end
    new_string.join(" ")
end
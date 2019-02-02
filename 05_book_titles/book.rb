class Book
    def title
        @title
    end

    def title=(string)
        @SPECIAL_WORDS = %w(
            the
            a
            an
            for
            and
            nor
            but
            or
            yet
            so
            of
            with
            at
            from
            into
            to
            in
            on
            by
            about
        )
        string = string.downcase.capitalize.split(" ")
        new_string = []
        string.each do |word|
            new_word = word.capitalize
            @SPECIAL_WORDS.each do |special_word|
                if (word == special_word)
                    new_word = new_word.downcase
                end
            end
            new_string<<new_word
        end
        @title = new_string.join(" ")
    end
end
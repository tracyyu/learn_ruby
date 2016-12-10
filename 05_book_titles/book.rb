class Book
# write your code here
    attr_accessor :title

    def title= str
        
        str = str.split(" ")
        translated = str[0].capitalize
        
        little_words = ['a','an', 'and', 'in', 'of', 'the', 'to' ]
        
        str[1..-1].each do |word|
            if little_words.include?(word)
                translated += " " + word
            else
                translated += " " + word.capitalize
            end
        end
        
        @title = translated
    end
end

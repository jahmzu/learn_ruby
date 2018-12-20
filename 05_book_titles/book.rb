class Book
    attr_accessor :title
    @@exceptions = ["and", "or", "but", "in", "the", "of", "a", "an"]
    
    def title
       @title.capitalize.split(" ").map {|word| @@exceptions.include?(word) ? word : word.capitalize}.join(" ")
    end
   
end



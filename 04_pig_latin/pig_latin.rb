#write your code here
def translate(s)
   words = s.split(" ")
   
   words.map! do |word| 
      vow_pos = find_vowel(word)
      puts vow_pos
      
      if  vow_pos > 0
         start = word[0...vow_pos]
         ending = word[vow_pos...word.length]
         ay = "ay"
         word = ending+start+ay
      else 
         word = word + "ay"
      end
   end
      
   return words.join(" ")
end

def find_vowel(w)
   pos = w.index(/[aeiou]/)
   if w[pos] == "u" && w[pos - 1] == "q"
      pos = w.index(/[aeiou]/, (pos + 1))
   end
   
   return pos
end
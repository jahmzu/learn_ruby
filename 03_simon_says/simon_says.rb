def echo(s)
   return s
end

def shout(s)
   return s.upcase
end

def repeat(s, t=2)
   sr = ""
   t.times do
      sr = sr + s + " "
   end
   return sr.strip!
end

def start_of_word(s, num)
   return s[0...num]
end

def first_word(s)
   return s.split[0]
end

def titleize(s)
   exceptions = ["and", "the", "over", "a"]
   return s.capitalize.split.map {|word| exceptions.include?(word) ? word : word.capitalize}.join(" ")
end
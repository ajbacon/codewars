# Kata:         rot 13
# Difficulty:   5kyu
# status:       Complete
# link:         https://www.codewars.com/kata/530e15517bc88ac656000716

class String
  def is_upper?
    self == self.upcase
  end
  
  def letter?
    self =~ /[[:alpha:]]/
  end
end

def rot13(string)
  out = string.chars.map do |i|
    if i.letter? == 0
      i.is_upper? ? (((i.ord - 65 + 13) % 26)+65).chr : (((i.ord - 97 + 13) % 26)+97).chr
    else
      i = i
    end
  end
  out.join("")
end
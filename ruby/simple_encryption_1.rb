# Kata:         Simple Encryption #1 - Alternating Split
# Difficulty:   6kyu
# status:       Complete
# link:         https://www.codewars.com/kata/57814d79a56c88e3e0000786

def encrypt(text, n)
  for i in 0...n
   text = (text.chars.select.with_index{ |v,i| i % 2 != 0} + text.chars.select.with_index{ |v,i| i % 2 == 0}).join
  end
  text
end

# liked the zip method so refactored!
def decrypt(encrypted_text, n)
  return encrypted_text if n < 1

  mid = encrypted_text.length/2
  n.times do
    arr1 = encrypted_text[0...mid].chars
    arr2 = encrypted_text[mid..-1].chars
    encrypted_text = arr2.zip(arr1).join
  end
  encrypted_text

end

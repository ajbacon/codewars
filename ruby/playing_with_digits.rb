# Kata:         Playing with digits
# Difficulty:   6kyu
# status:       Complete
# link:         https://www.codewars.com/kata/5552101f47fc5178b1000050


def dig_pow(n, p)
  sum = n.to_s.chars.each_with_index.reduce(0){ |sum, (v,i)| sum + v.to_i**(p+i)}
  return sum % n == 0 ? sum / n : -1
end

# Kata:         primorial of a number
# Difficulty:   6kyu
# status:       Complete
# link:         https://www.codewars.com/kata/5a99a03e4a6b34bb3c000124

def num_primorial(n)
  return 2 if n == 1
  arr = [2]
  current = 3
  loop do 
    if is_prime(current)
      arr << current
    end
    break if arr.length == n
    current += 2
  end
  arr.reduce(:*)
end

def is_prime (num)
  (2...num).each{ |i| return false if num % i == 0}
  true
end
# Kata:         persistent bugger
# Difficulty:   6kyu
# status:       Complete
# link:         https://www.codewars.com/kata/55bf01e5a717a0d57e0000ec


def persistence(n)
  count = 0
  until n.to_s.length == 1 do
    n = n.to_s.chars.reduce(1) { |prod,e| prod*e.to_i }
    count += 1
  end
  count
end
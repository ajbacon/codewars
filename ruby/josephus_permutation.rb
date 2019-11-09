# Kata:         josephus permutation
# Difficulty:   5kyu
# status:       Complete
# link:         https://www.codewars.com/kata/5550d638a99ddb113e0000a2

def josephus(items,k)
  n = -1
  out = []
  while items.length > 0 do 
    n = (n + k) % items.length 
    out.push(items.slice!(n))
    n -= 1 
  end
  out
end
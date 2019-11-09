# Kata:         build pile of cubes
# Difficulty:   6kyu
# status:       Complete
# link:         https://www.codewars.com/kata/5592e3bd57b64d00f3000047

def find_nb(m)
  n = 0
  sum = 0 
  while sum < m do
    n += 1
    sum += n**3
  end
  sum == m ? n  : -1
end
# Kata:         reverse or rotate?
# Difficulty:   6kyu
# status:       Complete
# link:         https://www.codewars.com/kata/56b5afb4ed1f6d5fb0000991


def revrot(str, sz)
  return "" if sz == 0 || sz > str.length
  out = ""
  str.split("").each_slice(sz).to_a.each do |i|
    return out if i.length < sz
    if i.reduce(0){ |sum,e| sum + (e.to_i)**3 } % 2 == 0 
      out += i.reverse!.join
    else
      out += i.rotate!.join
    end
  end
  out
end
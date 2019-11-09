# Kata:         Meeting
# Difficulty:   6kyu
# status:       Complete
# link:         https://www.codewars.com/kata/59df2f8f08c6cec835000012

def meeting(s)
  s.split(";").map!{ |e| e.split(":")}.map!{ |e| e.rotate!.join(", ").upcase!}.sort!.map!{ |e| e = "(#{e})"}.join("")
end
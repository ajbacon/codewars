# Kata:         maximum subarray sum
# Difficulty:   5kyu
# status:       Complete
# link:         https://www.codewars.com/kata/54521e9ec8e60bc4de000d6c

def max_sequence(arr)
  return 0 if arr == [] || arr.all?{ |item| item < 0 }
  max = arr[0]
  for i in 0...arr.length
    first = 0
    last = i+1
    loop do 
      max = arr.slice(first,i+1).sum if arr.slice(first,i+1).sum > max
      first += 1
      break if first + i + 1 > arr.length
    end
  end
  max
end
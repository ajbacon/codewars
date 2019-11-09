# Kata:         the supermarket queue
# Difficulty:   6kyu
# status:       Complete
# link:         https://www.codewars.com/kata/57b06f90e298a7b53d000a86

def queue_time(customers, n)
  return 0 if customers.empty?
  time_arr = Array.new(n,0)
  while customers.length > 0
    time_arr[time_arr.each_with_index.min[1]] += customers[0]
    customers.shift
  end
  time_arr.max
end
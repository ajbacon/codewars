# Kata:         Product of consecutive Fib numbers
# Difficulty:   5kyu
# status:       Complete
# Link:         https://www.codewars.com/kata/5541f58a944b85ce6d00006a

def productFib(prod)

  fib1 = 0
  fib2 = 1

  while true
    if fib1 * fib2 == prod
      return [fib1, fib2, true]
    elsif fib1 * fib2 > prod
      return [fib1, fib2, false]
    end
    fib3 = fib1 + fib2
    fib1 = fib2
    fib2 = fib3
  end
end

productFib(714)
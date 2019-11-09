# Kata:         vending machine
# Difficulty:   6kyu
# status:       Complete
# link:         https://www.codewars.com/kata/586e6d4cb98de09e3800014f


class VendingMachine
  # Write the magic here!
    def initialize (items, init_cash)
    @items = items
    @init_cash = init_cash
  end
  
  def vend (code, in_cash)
    item = @items.find{ |i| i[:code] == code.upcase }
    return "Invalid selection! : Money in vending machine = %0.2f" % @init_cash if !item
    return "Not enough money!" if in_cash < item[:price]
    return "#{item[:name]}: Out of stock!" if item[:quantity] == 0
    

    item[:quantity] -= 1
    @init_cash += item[:price]
    if in_cash == item[:price]
      return "Vending #{item[:name]}"
    else
      change = in_cash - item[:price]
      return "Vending #{item[:name]} with %0.2f change." % [change]
    end
  end
end
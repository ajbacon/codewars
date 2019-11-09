# Kata:         Ranking Poker Hands
# Difficulty:   4kyu
# status:       in progress
# Link:         https://www.codewars.com/kata/ranking-poker-hands



# high card
# pair
# 2 pair
# 3 of a kind
# straight (any sequence of 5 regardless of suit)
# flush (5 of the same card)
# full house (2 and 3)
# 4 of a kind
# straight flush
# royal flush



class PokerHand

  attr_accessor :hand, :other
  
  def initialize(hand)
    @hand = hand
  end
      
  def compare_with(other)
    @other = other

    @hand == @other

    value_card = ["2", "3", "4", "5", "6", "7", "8", "9", "10"
    "J", "Q", "K", "A"]

    


    
  
    # ...
  end

end

hand1 = PokerHand.new("2H 3H 4H 5H 6H")
puts hand1.hand

puts hand1.compare_with("2H 3H 4H 5H 6H")
puts hand1.other



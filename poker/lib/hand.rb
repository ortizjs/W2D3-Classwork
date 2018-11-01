require "deck"

class Hand 
  
  def initialize(five_cards)
    @cards = five_cards
  end
  
  def calculate
    hand_value = nil
    pair_hash = Hash.new(0)
    @cards.each do |card|
      pair_hash[card.value] +=1
    end
    case pair_hash.values.max 
    when 2
      hand_value = "pair"
    when 3
      hand_value = "three of a kind"
    when 4
      hand_value = "four of a kind"
    end
  end
end
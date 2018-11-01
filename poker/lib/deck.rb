require_relative "card.rb"

class Deck 
  attr_reader :cards
  
  def initialize
    suits = [:spades, :hearts, :clubs, :diamonds]
    @cards = []
    (1..13).each do |value|
      suits.each do |suit|
        @cards << Card.new(value,suit)
      end
    end
  end
  
  def shuffle!
    @cards.shuffle!
  end
  
  def take(num=1)
    result = []
    num.times {result << @cards.pop}
    result
  end
  
  def cards_left
    @cards.count
  end
end
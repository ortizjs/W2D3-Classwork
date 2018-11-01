class Card 
  attr_reader :value, :suit
  
  SUITS = {
    hearts: "♥️",
    spades: "♠️",
    diamonds: "♦️",
    clubs: "♣️"
  }
  VALUES = {
    1 => "A",
    2 => "2",
    3 => "3",
    4 => "4",
    5 => "5",
    6 => "6",
    7 => "7",
    8 => "8",
    9 => "9",
    10 => "10",
    11 => "J",
    12 => "Q",
    13 => "K"
  }
  
  def initialize(value, suit)
    raise ArgumentError unless value.is_a?(Integer)
    raise ArgumentError, "invalid value for card" unless (1..13).include?(value)
    raise ArgumentError, "invalid suit for card" unless SUITS.has_key?(suit)
    @value = value
    @suit = suit
  end
  #raise error if try to initialize with wrong value or suit
  
  def to_s
    "value: #{VALUES[value]} suit: #{SUITS[suit]}"
  end
end
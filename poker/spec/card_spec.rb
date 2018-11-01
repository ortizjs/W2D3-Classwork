require "card"
require "rspec"

describe "Card" do
  subject(:card) {Card.new(1, :spades)}
  
  describe "#initialize" do
    
    it "initializes a card with a value and suit" do
      expect(card.value).to be_a(Integer)
      expect(card.suit).to be_truthy      
    end
    
    it "raises ArgumentError" do
      expect { Card.new(15, :spades) }.to raise_error("invalid value for card")
      expect { Card.new(7, :jack) }.to raise_error("invalid suit for card")
      expect {Card.new("7", :hearts) }.to raise_error(ArgumentError)
    end
    
    
  end
  
  describe "#to_s" do
    
    it "returns the value and suit as a string" do
      expect(card.to_s).to be_a(String)
    end
  end
  
  
end
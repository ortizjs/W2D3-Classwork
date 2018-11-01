require "rspec"
require "hand"

describe "Hand" do
  subject(:hand1) { Hand.new}
  
  describe "#initialize" do
    
    it "should initialize with an aray of 5 random cards" do
      expect(hand1.cards.length).to eq(5)
    end
    
    it "should contain 5 card objects" do
      all_cards = hand1.cards.all? {|card| card.is_a?(Card)}
      expect(all_cards).to be_truthy
    end
    
  end
   
end
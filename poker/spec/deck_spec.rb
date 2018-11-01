require "deck"
require "rspec"

describe "deck" do
  subject(:deck) {Deck.new}
  
  describe "#initialize" do
    it "initializes with 52 cards" do
      expect(deck.cards.count).to eq(52)
    end
    
    it "it should not have any duplicate cards" do
      expect(deck.cards.uniq).to eq(deck.cards)
    end
  end
  
  describe "#shuffle!" do
    it "shuffles the cards in the deck" do
      sorted = deck.cards.dup
      deck.shuffle!
      expect(deck.cards).to_not eq(sorted)
    end
  end
  
  describe "#take" do
    context " when no argument given " do
      it "should remove one card from the deck" do
        deck.take
        expect(deck.cards.length).to eq(51)
      end
    end
    
    context "when an argument is given" do
      it "should remove multiple cards " do
        deck.take(5)
        expect(deck.cards.length).to eq(47)
      end
    end
    
    it "should return removed cards" do
      expect(deck.take).to be_a(Array)
    end
  end
  
  describe "#cards_left" do
    
    it "should return number of cards left in deck" do
      expect(deck.cards_left).to eq(deck.cards.count)
    end
  end
  
end
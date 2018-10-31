require "rspec_projects"
require "rspec"

RSpec.describe "Array" do

  describe "my_uniq" do

    it "returns an array" do
      result = [1,2,3].my_uniq
      expect(result).to be_a(Array)
    end

    it "remove duplicats from array" do      
      expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
    end
  end
  
  describe "two_sum" do
    
    it "it returns the indices of two numbers that add to zero" do
      expect([-1,0,2,-2,1].two_sum).to eq([[0,4], [2,3]])
    end
  end
  
  describe "my_transpose" do
    
    it "returns a new nested array with the elements transposed" do
      rows = [
        [0,1,2],
        [3,4,5],
        [6,7,8]
      ]
      
      cols = [
        [0,3,6],
        [1,4,7],
        [2,5,8]
      ]
      
      expect(rows.my_transpose).to eq(cols)
    end
  end
  
  describe "stock_picker" do
    it "takes an array of stock prices and returns most profitable combination" do
      stocks = [10,7,21,14,22,18,25]
      expect(stocks.stock_picker).to eq([1,6])
    end
    
    it "it properly handles buying first" do
    stocks2 = [25,14,21,7,22,18,10]
    expect(stocks2.stock_picker).to eq([3,4])
    end
  end
  
end

describe "TowersOfHanoi" do
  subject(:game) {TowersOfHanoi.new}
  
  describe "#initialize" do
    
    it "initializes with an instance variable towers as a nested array of length 3" do
      expect(game.towers.length).to eq(3)
    end
    
    it "sets the first tower to contain three discs" do
      expect(game.towers[0]).to eq([3,2,1])
    end
    
    it "starts with the last two towers empty" do
      expect(game.towers[1]).to be_empty
      expect(game.towers[2]).to be_empty
    end
  end
  
  describe "#move_disc" do
    it "it moves a disc from one tower to another" do
      game.move_disc(0,2)
      expect(game.towers[2]).to eq([1])
      expect(game.towers[0]).to eq([3,2])
    end
    it "raises an error with an invalid move" do
      game.move_disc(0,2)
      expect {game.move_disc(0,2)}.to raise_error(ArgumentError)
    end
    it "raises error when the from tower is empty" do
      expect{game.move_disc(1,2)}.to raise_error(ArgumentError)
    end
  end
end
class Array
  
  
  def my_uniq
    result = []
    
    self.each do |el|
      result << el unless result.include?(el)
    end
    
    result
  end
  
  def two_sum
    result = []
    self.each_with_index do |ele1, idx1|
      self.each_with_index do |ele2, idx2|
        next if idx2 <= idx1
        result << [idx1, idx2] if ele1 + ele2 == 0
      end
    end
    result
  end
  
  def my_transpose
    result = []
    
    row_length = self[0].length
    row_length.times do |idx|
      cols = []
      self.each do |row|
        cols << row[idx]
      end
      result << cols
    end
    result
  end
  
  def stock_picker
    best_profit = 0
    result = []
    self.each_with_index do |stock1, idx1|
      self.each_with_index do |stock2, idx2|
        next if idx2 <= idx1
        if stock2 - stock1 > best_profit
          best_profit = stock2 - stock1
          result = [idx1, idx2]
        end
      end
    end
    result
  end
  
end

class TowersOfHanoi
  attr_reader :towers
  
  def initialize
    @towers = [[3,2,1],[],[]]
  end
  
  def move_disc(from_tower, to_tower)
    raise ArgumentError if @towers[from_tower].empty?
    if @towers[to_tower].empty? == false && @towers[from_tower].last > @towers[to_tower]
      raise ArgumentError
    end
    @towers[to_tower] << @towers[from_tower].pop 
  end
end


def my_uniq(arr) 
  new_arr = []
  arr.each { |ele| new_arr << ele unless new_arr.include?(ele) }
  new_arr

end

class Array
  def two_sum
    arr = []
    (0...self.length-1).each do |i|
      ((i+1)...self.length).each do |j|
        arr << [i,j] if self[i] + self[j] == 0
      end
    end
    arr
  end

  def my_transpose
    new_arr = []
    (0...self.length).each do |inner|
      subArr = []
      (0...self.length).each do |outer|  
        subArr << self[outer][inner]
      end
      new_arr << subArr
    end
    new_arr
  end

end


def stock_picker(arr)
  new_arr = []
  profit = 0
  (0...arr.length-1).each do |i|
    ((i+1)...arr.length).each do |j|
      if (arr[j] - arr[i]) > profit
        profit = arr[j] - arr[i]
        new_arr = [i,j]
      end
    end
  end
  new_arr
end


class TowersOfHanoi
  attr_accessor :stack_from, :stack_to, :stacks
  def initialize(n)
    @stacks = Array.new(3) {[]}
    @stacks[0] = (1..n).to_a.shuffle
    @stack_from = 0
    @stack_to = 0
  end

  def get_move
    puts "Please enter an index [0,1,2] to take a disc from"
    stack_from = gets.chomp
    puts "Please enter an index [0,1,2] to place the selected disc to "
    stack_to = gets.chomp
  end

  def move_disc
    disc = stacks[stack_from].pop
    if disc < stacks[stack_to].last
      stacks[stack_to].push(disc) 
    else
      puts "Invalid move: Disc too big...try again"
      get_move
    end
  end

  def won?
    game.stacks.any?{|stack| stack == (1..n).to_a.reverse}
  end

  def play
    while !won?
      get_move
      move_disc
    end
    puts "Congrats! You won!"
  end

end


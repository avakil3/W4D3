require 'rspec'
require 'TDD.rb'


describe '#my_uniq' do 
  arr = [1,4,5,5,2,1] 
  it 'should select only unique elements' do 
    expect(my_uniq(arr)).to eq([1,4,5,2]) 
  end

end


describe '#two_sum' do  
  arr = [-1, 0, 2, -2, 1]
  it 'should find all pairs of positions where the elements at those positions sum to zero' do 
    expect(arr.two_sum).to eq([[0, 4], [2, 3]])
  end

  it 'should have each of the pairs to be sorted smaller index before bigger index' do 
    expect(arr.two_sum).to eq(arr.two_sum.sort)
  end

end

describe "#my_transpose" do 
  rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ] 

  it "will convert between the row-oriented and column-oriented representations" do 
    expect(rows.my_transpose).to eq(rows.transpose)
  end
  
  it "will not use built-in method .transpose" do 
    expect_any_instance_of(Array).not_to receive(:transpose)
  end
end

describe "#stock_picker" do 
  arr = [4,2,1,6,8,50,1]
  context "takes an array of stock prices (prices on days 0, 1, ...)" do
    
    it "should accept ONLY an array as an argument" do
      expect(arr).to be_an_instance_of(Array)
    end
    
    it "should output the most profitable pair of days on which 
    to first buy the stock and then sell the stock. "  do
      expect(stock_picker(arr)).to eq([2,5])
    end

  end

end


describe TowersOfHanoi do   
  subject(:game) { TowersOfHanoi.new(4) }

  describe '#initialize' do 
    it 'should create 1 2D array, containing 3 arrays' do
      expect(game.stacks).to eq([ [],[],[] ])
    end
    
    it 'should have a total of n discs across all stacks' do 
      expect(game.stacks.inject(0) {|acc, el| acc += el.length}.to eq(n) # 4? 
    end
    
  end


  describe '#get_move' do 
    before do 
      input = double
      expect(:game)
        .to_receive(:gets)
        .and_return(input)
        .twice
      expect(input)
        .to_receive(:chomp)
        .and_return(:stack_from)
      expect(input)
    
    
    
    it 'should get user\'s input to select from stack' do
      expect(subject)
        .to receive(:gets)
        .and_return  
      #expect_any_instance_of(Array).not_to receive(:transpose)
    end
    
    
    # stack_from gets (top_piece)
    #   disc_value = top_piece
    # stack_to gets

  end
  # In a loop, 
  # gets: ask what pile to select a disc from
  # gets: ask where to put it.


  # get piece from stack (piece, from)
  # get new stack (to)
  
  
  
  
  
  describe '#move_disc' do
    it 'should only move one disc at a time' do

    end
    
    it 'should only place a disc on a disc that is smaller than it' do 
      expect(game.stacks
    end
  end





# check #move
#   - Only one disk may be moved at a time.
#   - Each move consists of taking the upper disk from 
#     one of the stacks and placing it on top of another 
#     stack or on an empty rod.
#   - No disk may be placed on top of a disk that is 
#     smaller than it.

end

# arr1 = []
# arr2 = [4, 1]
# arr3 = [3, 2]


# Keep three arrays, which represent the piles of discs. 
#   - 4 or more discs
# representation of the discs to store in the arrays

# In a loop, 
# gets: ask what pile to select a disc from
# gets: ask where to put it.



# check #won? after each move
#   - 2 empty?, 1 sorted.reverse 


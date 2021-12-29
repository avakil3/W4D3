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
      expect(game.stacks.inject(0) {|acc, el| acc += el.length}).to eq(4)  
    end
    
  end


 
    
    # stack_from gets (top_piece)
    #   disc_value = top_piece
    # stack_to gets




  # In a loop, 
  # gets: ask what pile to select a disc from
  # gets: ask where to put it.


  # get piece from stack (piece, from)
  # get new stack (to)
  
  
  
  
  
  describe '#move_disc' do
 

    before(:each) do
      #dont need to recreate stacks... just call game.stacks
      let(:stack_from) { 0 }
      let(:stacks[stack_from]) { [1,3] }
      let(:disc) {  stacks[stack_from].last }

      let(:stack_to) {1}
      let(:stacks[stack_to]) { [4] }
  end

  
    it "should select the top disc from the index @stack_from" do
        expect(disc).to eq(stacks[stack_from].last)
    end

    
    it 'should only place a disc on index @stack_to if the disc is smaller than the top disc ' do 
      expect(disc).to be < (stacks[stack_to].last) 
    end

    it "should call #won? method at the end" do
      expect(game).to receive(:won?)  
    end

  end


  describe "#won?" do
    it "should check game.stacks for two empty stacks and one stack sorted from largest to smallest" do
      expect(game.stacks.any?{|stack| stack == [4,3,2,1]}).to be true
    end
  
  end


  # check #won? after each move
#   - 2 empty?, 1 sorted.reverse 



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






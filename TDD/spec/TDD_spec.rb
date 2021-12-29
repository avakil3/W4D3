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
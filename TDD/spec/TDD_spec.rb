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
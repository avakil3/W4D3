

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


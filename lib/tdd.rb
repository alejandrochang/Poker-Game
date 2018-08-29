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
    (0...self.length - 1).each do |idx1|
      (idx1+1...self.length).each do |idx2|
        result << [idx1, idx2] if self[idx1] + self[idx2] == 0
      end
    end

    result
  end
end

def my_tranpose(array)
  result = Array.new(array.count){Array.new(array.count)}
  array.count.times do |i|
    array.count.times do |j|
     result[i][j] = array[j][i]
    end
  end

  result
end

def stock_picker(array)
  days = []
  biggest_difference = 0
  (0...array.length - 1).each do |idx1|
    (idx1+1...array.length).each do |idx2|
      if array[idx2] - array[idx1] > biggest_difference
        biggest_difference = array[idx2] - array[idx1]
        days = [idx1, idx2]
      end
    end
  end

  days
end

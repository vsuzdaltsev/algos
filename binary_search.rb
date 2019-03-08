class BinarySearch
  def self.random_array(size: 0, max: 0)
    arr = []
    while arr.size < size
      elem = rand(max)
      arr << elem unless arr.include?(elem)
    end
    arr.sort
  end

  def self.run(arr, item, low = 0, high = arr.size - 1)
    while low <= high do
      mid = (low + high) / 2
      guess = arr[mid]
      return mid if guess.eql?(item)
      low  = mid + 1 if guess < item
      high = mid - 1 if guess > item
    end
    nil
  end
end

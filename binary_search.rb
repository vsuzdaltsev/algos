class BinarySearch
  def self.random_array(size: 0, max: 0)
    arr = []
    while arr.size < size
      elem = rand(max)
      arr << elem unless arr.include?(elem)
    end
    arr.sort
  end

  def self.run(arr, item)
    low  = 0
    high = arr.size - 1
    while low <= high do
      mid = (low + high) / 2
      guess = arr[mid]
      if guess == item
        return mid
      elsif guess < item
        low = mid + 1
      else guess > item
        high = mid - 1
      end
    end
    return nil
  end
end

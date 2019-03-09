# Binary search
class BinarySearch
  def self.random_int_array(size: 0, max: 0)
    arr = []
    while arr.size < size
      elem = rand(max)
      arr << elem unless arr.include?(elem)
    end
    arr.sort
  end

  def self.random_str_array(size: 0, str_len: 0)
    size.times.map.each_with_object([]) do |_t, memo|
      memo << BinarySearch.random_str(str_len: str_len)
    end.sort
  end

  def self.random_str(str_len: 0)
    str_len.times.map.each_with_object('') do |_t, memo|
      memo << ('a'..'z').to_a.sample
    end
  end

  def self.run(arr, item, low = 0, high = arr.size - 1)
    while low <= high
      mid   = (low + high) / 2
      guess = arr[mid]
      return mid if guess.eql?(item)

      low  = mid + 1 if (guess <=> item) == -1
      high = mid - 1 if (guess <=> item) == 1
    end
    nil
  end
end

class BinarySearch
  def self.random_array(how_many, max)
    arr = []
    while arr.size < how_many
      elem = rand(max)
      arr << elem unless arr.include?(elem)
    end
    arr.sort
  end

  def self.search(arr, item)
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


random_arr  = BinarySearch.random_array(10, 1000)
random_elem = random_arr.sample
index       = BinarySearch.search(random_arr, random_elem)

puts "*Random array:      #{random_arr}"
puts "*Random element is: #{random_elem}"
puts ">>Index of #{random_elem}: #{index}"

# Binary search
class BinarySearch
  class << self
    def run(arr, item, low = 0, high = arr.size - 1)
      while low <= high
        mid   = (low + high) / 2
        guess = arr[mid]
        return mid if guess.eql?(item)

        low  = mid + 1 if (guess <=> item).eql?(-1)
        high = mid - 1 if (guess <=> item).eql?(1)
      end
      nil
    end
  end
end

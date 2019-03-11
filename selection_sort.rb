# Selection sort
class SelectionSort
  class << self
    def run(arr)
      arr_dup = arr.dup
      arr.each_with_object([]) do |_elem, memo|
        smallest = smallest_element_index(arr_dup)
        memo << arr_dup.delete_at(smallest)
      end
    end
    
    private

    def smallest_element_index(arr)
      smallest_index = 0
      arr.each_with_index do |_elem, index|
        if arr[index] < arr[smallest_index]
          smallest_index = index
        end
      end
      smallest_index
    end
  end
end

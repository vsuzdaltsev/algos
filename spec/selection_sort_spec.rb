describe 'SelectionSort.send(:smallest_element_index)' do
  before do
    @arr       = [2,3,4,5,1,33]
    @min_index = 4
  end

  context 'when search for the index of the smallest element in array' do
    it 'should return index of element' do
      expect(SelectionSort.send(:smallest_element_index, (@arr))).to eq @min_index
    end
  end
end

describe 'SelectionSort.run' do
  before do
    @arr    = Random.int_array(size: 100, max: 100, sort: false)
    @sorted = @arr.sort
  end

  context 'when process given array' do
    it 'should return sorted array' do
      expect(SelectionSort.run(@arr)).to eq @sorted
    end
  end
end

describe 'SelectionSort.run' do
  context 'when array consists of Integer elements' do
    before do
      @arr = Random.int_array(size: 1000, max: 10000, sort: false).freeze
    end
    
    context 'when search for the 6th element in sorted array' do
      it 'should return index of element' do
        expect(SelectionSort.run(@arr)).to eq @arr.sort
      end
    end
  end
end

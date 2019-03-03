describe 'BinarySearch.search' do
  context "when search in sorted array" do
    it "should return index of element" do
      array        = [11, 22, 33, 44, 55, 66, 77, 88, 99, 111]
      what_to_find = 77
      index        = 6

      expect(BinarySearch.run(array, what_to_find)).to eq index
    end
  end
end

describe 'BinarySearch.run' do
  context 'when array consists of Integer elements' do
    before do
      @arr = Random.int_array(size: 1000, max: 10000).freeze
    end

    context 'when search for the 6th element in sorted array' do
      it 'should return index of element' do
        expect(BinarySearch.run(@arr, @arr[6])).to eq 6
      end
    end

    context 'when search for the first element in sorted array' do
      it 'should return index of element' do
        expect(BinarySearch.run(@arr, @arr[0])).to eq 0
      end
    end

    context 'when search for the last element in sorted array' do
      it 'should return index of element' do
        expect(BinarySearch.run(@arr, @arr[555])).to eq 555
      end
    end

    context 'when search for the nonexistent element in sorted array' do
      it 'should return nil' do
        expect(BinarySearch.run(@arr, 99999999)).to eq nil
      end
    end
  end

  context 'when array consists of String elements' do
    before do
      @arr = Random.str_array(size: 10000, str_len: 10).freeze
    end

    context 'when search for the 6th element in sorted array' do
      it 'should return index of element' do
        expect(BinarySearch.run(@arr, @arr[6])).to eq 6
      end
    end

    context 'when search for the first element in sorted array' do
      it 'should return index of element' do
        expect(BinarySearch.run(@arr, @arr[0])).to eq 0
      end
    end

    context 'when search for the 555th element in sorted array' do
      it 'should return index of element' do
        expect(BinarySearch.run(@arr, @arr[555])).to eq 555
      end
    end

    context 'when search for the nonexistent element in sorted array' do
      it 'should return nil' do
        expect(BinarySearch.run(@arr, 'nonexistent')).to eq nil
      end
    end
  end
end

module Helper
  IntArray = [11, 22, 33, 44, 55, 66, 77, 88, 99, 111]
  StrArray = %w[depfm fayik ggfhj hywle ohngr skjlz toedw wziyq xdpgm ylzyo]
end

describe 'BinarySearch.search' do
  context 'when array consists of Integer elements' do
    context "when search 6th element in sorted array" do
      it "should return index of element" do
        what_to_find = 77
        index        = 6

        expect(BinarySearch.run(Helper::IntArray, what_to_find)).to eq index
      end
    end

    context "when search first element in sorted array" do
      it "should return index of element" do
        array        = [11, 22, 33, 44, 55, 66, 77, 88, 99, 111]
        what_to_find = 11
        index        = 0

        expect(BinarySearch.run(Helper::IntArray, what_to_find)).to eq index
      end
    end

    context "when search last element in sorted array" do
      it "should return index of element" do
        array        = [11, 22, 33, 44, 55, 66, 77, 88, 99, 111]
        what_to_find = 111
        index        = 9

        expect(BinarySearch.run(Helper::IntArray, what_to_find)).to eq index
      end
    end

    context "when search nonexistent element in sorted array" do
      it "should return nil" do
        array        = [11, 22, 33, 44, 55, 66, 77, 88, 99, 111]
        what_to_find = 222
        index        = nil

        expect(BinarySearch.run(Helper::IntArray, what_to_find)).to eq index
      end
    end
  end

  context 'when array consists of String elements' do 
    context "when search 6th element in sorted array" do
      it "should return index of element" do
        what_to_find = 77
        index        = 6

        expect(BinarySearch.run(Helper::IntArray, what_to_find)).to eq index
      end
    end

    context "when search first element in sorted array" do
      it "should return index of element" do
        what_to_find = 11
        index        = 0

        expect(BinarySearch.run(Helper::IntArray, what_to_find)).to eq index
      end
    end

    context "when search last element in sorted array" do
      it "should return index of element" do
        what_to_find = 111
        index        = 9

        expect(BinarySearch.run(Helper::IntArray, what_to_find)).to eq index
      end
    end

    context "when search nonexistent element in sorted array" do
      it "should return nil" do
        what_to_find = 222 
        index        = nil

        expect(BinarySearch.run(Helper::IntArray, what_to_find)).to eq index
      end
    end
  end
end

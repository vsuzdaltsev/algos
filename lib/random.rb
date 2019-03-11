# Random sorted arrays
class Random
  class << self
    def int_array(size: 0, max: 0)
      arr = []
      while arr.size < size
        elem = rand(max)
        arr << elem unless arr.include?(elem)
      end
      arr.sort
    end

    def str_array(size: 0, str_len: 0)
      size.times.map.each_with_object([]) do |_t, memo|
        memo << random_str(str_len: str_len)
      end.sort
    end

    private

    def random_str(str_len: 0)
      str_len.times.map.each_with_object('') do |_t, memo|
        memo << ('a'..'z').to_a.sample
      end
    end
  end
end

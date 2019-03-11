# Random sorted arrays
class Random
  class << self
    def int_array(size: 0, max: 0, sort: true)
      arr = []
      while arr.size < size
        elem = rand(max)
        arr << elem unless arr.include?(elem)
      end
      return arr unless sort

      arr.sort
    end

    def str_array(size: 0, str_len: 0, sort: true)
      arr = size.times.map.each_with_object([]) do |_t, memo|
        memo << random_str(str_len: str_len)
      end
      return arr unless sort

      arr.sort
    end

    private

    def random_str(str_len: 0)
      str_len.times.map.each_with_object('') do |_t, memo|
        memo << ('a'..'z').to_a.sample
      end
    end
  end
end

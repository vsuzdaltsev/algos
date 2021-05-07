# $input = "apples, pears # and bananas\ngrapes\nbananas !apples"
# $input = "apples, plums % and bananas\npears\noranges !applesauce"
def solution(input, markers)
  @input = input
  cleaned = []
  clean = @input.split("\n")
  markers.each do |m|
    split_n.each do |e|
      puts "M: #{m}"
      puts "E: #{e}"
      cleaned << e.split(m).first if marker?(e, m)
      clean.delete_if { |e| e if marker?(e, m) }
    end
  end

  res = @input.split("\n").each_with_index.each_with_object({}) do |(e, i), memo|
    memo.merge!(e => i) if clean.any? { |el| el == e }
  end

  puts "CLEANED: #{cleaned}"
  puts "CLEAN: #{clean}"
  puts "RES: #{res}"

  res.each_pair do |e, i|
    cleaned.insert(i, e)
  end
  cleaned.join("\n").strip
end

def split_n
  @input.split("\n")
end

def marker?(str, marker)
  str.include?(marker)
end

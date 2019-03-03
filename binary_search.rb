def random_array(elem_count, last)
  elem_count.times.map.each_with_object([]) do |elem, memo|
    memo << rand(last)
  end.sort  
end



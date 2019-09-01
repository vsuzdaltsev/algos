def balanced? string
  return false if string.length.odd?

  return false if string =~ /[^\[\]\(\)\{\}]/

  pairs = { '(' => ')' }

  string.chars.each_with_object([]) do |sym, stack|
    closing = pairs[sym]
    if closing
      stack << closing
    else
      return false unless stack.pop == sym
    end
  end.empty?
end

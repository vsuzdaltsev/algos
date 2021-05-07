def balanced?(string)
  return false if string.length.odd?

  return false if string =~ /[^\(\)]/

  opening = '('
  closing = ')'

  string.chars.each_with_object([]) do |sym, stack|
    if sym.eql?(opening)
      stack << closing
    else
      return false unless stack.pop.eql?(closing)
    end
  end.empty?
end

def balanced_parens(n)
  ('()' * n).chars.permutation(n * 2).map { |e| e.join if balanced?(e.join) }.compact.uniq
end

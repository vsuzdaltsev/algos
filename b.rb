def balanced_parens(n)
  variants(n).each_with_object([]) do |var, memo|
    memo << var if balanced?(var)
  end 
end

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

def variants(pairs_count)
  ('()' * pairs_count).chars.permutation(pairs_count * 2).map { |e| e.join }.sort.uniq
end

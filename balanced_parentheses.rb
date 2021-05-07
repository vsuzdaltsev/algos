# frozen_string_literal: true

require 'set'

def balanced?(string)
  return false if string.length.odd?

  return false if string =~ /[^()]/

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
  return ['()'] if n == 1

  balanced_parens(n - 1).each_with_object(Set.new) do |str, set|
    str.length.times do |i|
      set << str.dup.insert(i, '()')
    end
  end.to_a
end

def balanced_parens_one_more(n)
  ('()' * n).chars.permutation(n * 2).map { |e| e.join if balanced?(e.join) }.compact.uniq
end

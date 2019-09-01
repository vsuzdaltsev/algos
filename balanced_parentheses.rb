require 'pry'

def balanced? string
  return false if string.length.odd?
  return false if string =~ /[^\[\]\(\)\{\}]/
  # binding.pry
  pairs = { '(' => ')' }

  stack = []
  string.chars do |sym|
    closing = pairs[sym]
    puts "closing: #{closing}"
    if closing
      stack << closing
    else
      return false unless stack.pop == sym
    end
  end

  stack.empty?
end

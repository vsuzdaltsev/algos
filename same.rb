class Array
  def same_structure_as(array)
    return false unless array.is_a?(Array)
    
    self.parse_nested.eql?(array.parse_nested)
  end

  def parse_nested(obj = self)
    obj.each_with_object([]) do |element, memo|
      memo << (element.is_a?(Array) ? parse_nested(element) : nil)
    end
  end
end

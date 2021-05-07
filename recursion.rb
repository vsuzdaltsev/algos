def factorial(num)
  return num if num <= 1

  num * factorial(num - 1)
end

def append(array, n)
  return array if n < 0

  array << n
  append(array, n - 1)
end

def reverse_append(array, n)
  return array if n < 0

  reverse_append(array, n - 1)
  puts n
  array << n
end

def countdown(from)
  return if from <= 0

  puts from
  countdown(from - 1)
end

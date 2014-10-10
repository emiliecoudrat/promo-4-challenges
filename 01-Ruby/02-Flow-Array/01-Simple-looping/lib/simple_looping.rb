
def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  sum = min
  min = min +1
  while min <= max
    sum = sum + min
    min += 1
  end
  sum
end


def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  sum = 0
  for num in min..max
    sum = sum + num
  end
  sum
end


def sum_recursive(min, max)
  # CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
end
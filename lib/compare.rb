def compare(a, b)
  if ((a == nil || b == nil) || (a.empty? || b.empty?))
    return false
  else
    a.map { |e| e**2 }.sum == b.sum
  end
end

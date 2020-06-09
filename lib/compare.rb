def compare(a, b)
  if (a == nil || b == nil)
    return false
  elsif (a.empty? || b.empty?)
    return true
  else
    a.map { |e| e**2 }.sum == b.sum
  end
end


# this solution doesnt pass kata's tests
# for some reason, if I replace .sum with .sort it does work
# when testing kata's examples in rspec, my solution works

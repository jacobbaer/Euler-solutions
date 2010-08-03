def sieve(upper)
  list = (2..upper).to_a
  
  p = 2
  key = 0
  
  while (p**2 < upper) do
    list.collect! { |item| item if not item % p == 0 or item == p }.compact!        
    key += 1
    p = list[key]
  end
  
  return list
end
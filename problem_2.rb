# seed with the first values; a and b are not generated as part of the
# sequence but that is okay, because we're only interested in even numbers.

a = 1 # n - 1 term
b = 1 # n - 2 term
c = 2 # current term

sum = 0 # sum of even numbers

while c <= 4000000
  
  # find current term by adding previous 2
  c = a + b
  
  # shift current and n - 1 terms back
  a = b
  b = c
  
  # if c is even, add it to the sum
  if c % 2 == 0
    sum += c
  end
end

puts sum
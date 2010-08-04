max_palindrome = 0

for x in 100..999
  for y in 100..999
    prod = x * y
    if prod.to_s.reverse == prod.to_s and prod > max_palindrome
      max_palindrome = prod
    end
  end
end

puts max_palindrome
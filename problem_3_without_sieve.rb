# Set the numner to find the prime factorization of
n = 600851475143

factor = 1

while n > 1 do

  factor += 1
  
	while (n % factor == 0) do
		n /= factor
	end

end

puts factor
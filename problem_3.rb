require 'lib/sieve_of_eratosthenes'

# Set the numner to find the prime factorization of
n = 600851475143

# Initialize an array for the prime factors
prime_factors = []

# Call the sieve for our number
primes = sieve(Math.sqrt(n))

while n > 1
  
  # Try primes until we find one that's divisible
  i = 0
  while not n % primes[i] == 0
    i += 1    
  end
  
  # Save that prime
  prime_factors << primes[i]
  
  # Factor that prime out of what's left to work on
  n /= primes[i]
end

puts prime_factors
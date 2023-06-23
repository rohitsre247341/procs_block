class PrimeCalculator
  def self.calculate_prime(n)
    if n <= 1
      p "the number #{n} is not prime number "
    else
     ( 2..(n-1)).each do |s|
        return false if n% s == 0
      end
      true
    end
  end

  define_method(:is_prime) do |n|
    PrimeCalculator.calculate_prime(n)
  end

end
s = PrimeCalculator.new
p s.is_prime(6)
p s.is_prime(17)
class PrimeFactors

  module Generator
    def generate(n, factors=[])
      return factors if n == 1
      new_factor = (2..n).find {|f| n % f == 0} 
      generate(n / new_factor, factors + [new_factor])
    end
  end

  extend Generator

end

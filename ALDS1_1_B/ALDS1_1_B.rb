class GCD
  def output()
    input = gets.chomp.split.map(&:to_i)
    gcd = gcd(input[0],input[1])

    puts(gcd)
  end

  def gcd(a, b)
    if b > a 
      t = a
      a = b
      b = t
    end

    if b == 0 
      return a
    end

    return gcd(b, a%b)
  end
end

gcd = GCD.new
gcd.output

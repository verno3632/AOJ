class LCM
  def output()
    gets.to_i
    array = gets.chomp.split.map(&:to_i)
    array.sort!
    array.uniq!

    num = 1
    while !isLcm(num*array.last, array)
      num += 1
    end
    
    puts num*array.last
  end

  def isLcm(num, array)
    for i in array
      if num % i > 0
        return false
      end
    end

    return true
  end

end

lcm = LCM.new
lcm.output

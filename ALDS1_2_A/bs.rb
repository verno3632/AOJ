class BS
  def output()
    gets.to_i
    array = gets.chomp.split.map(&:to_i)
    swap = bubbleSort!(array)

    puts(array2line(array))
    puts(swap.to_s)
  end

  def bubbleSort!(array)
    s = 0
    for i in 0..array.length-1
      for j in (array.length-1).downto(i+1)
        if array[j] < array[j-1]
          s += 1
          r = array[j]
          array[j] = array[j-1]
          array[j-1] = r
        end
      end
    end

    return s
  end

  def array2line(array)
    str = ""
    for i in array
      str = str + i.to_s + " "
    end
    return str.strip
  end
end

bs = BS.new
bs.output

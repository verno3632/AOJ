class SS
  def output()
    gets.to_i
    array = gets.chomp.split.map(&:to_i)

    swap = selectionSort!(array)

    puts(array2line(array))
    puts(swap.to_s)
  end

  def selectionSort!(array)
    s = 0
    for i in 0..array.length-1
      mini = i
      for j in i..array.length-1
        if array[j] < array[mini]
          mini = j
        end
      end

      if mini != i
        s += 1
        r = array[i]
        array[i] = array[mini]
        array[mini] = r
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

ss = SS.new
ss.output

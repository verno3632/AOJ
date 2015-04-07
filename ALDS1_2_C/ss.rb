class SS
  def output()
    gets
    array = gets.chomp.split
    bsarray = array.clone
    ssarray = array.clone

    bubbleSort!(bsarray)
    selectionSort!(ssarray)

    puts(array2line(bsarray))
    puts(stable?(array,bsarray) ? "Stable" : "Not stable")
    puts(array2line(ssarray))
    puts(stable?(array,ssarray) ? "Stable" : "Not stable")


  end

  def array2line(array)
    str = ""
    for i in array
      str = str + i.to_s + " "
    end

    return str.strip
  end

  def bubbleSort!(array)
    s = 0
    for i in 0..array.length-1
      for j in (array.length-1).downto(i+1)
        if array[j][1,1].to_i < array[j-1][1,1].to_i
          s += 1
          r = array[j]
          array[j] = array[j-1]
          array[j-1] = r
        end
      end
    end
  end

  def selectionSort!(array)
    s = 0
    for i in 0..array.length-1
      mini = i
      for j in i..array.length-1
        if array[j][1,1].to_i < array[mini][1,1].to_i
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
  
  def stable?(input, sorted)
    for i in 0..sorted.length-2
      if sorted[i][1,1].to_i == sorted[i+1][1,1].to_i
        if input.index(sorted[i]) > input.index(sorted[i+1])
          return false
        end
      end
    end

    return true;
  end
end

ss = SS.new
ss.output

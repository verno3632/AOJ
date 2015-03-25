def insertionSort()
  n = gets.to_i
  a = gets.chomp.split.map(&:to_i)


  sort(a,n)
end

def sort(a,n)
  printArray(a)
  for i in 1..n-1 do
    v = a[i]
    j = i-1
    while j>=0 && a[j] > v do
      a[j+1] = a[j]
      j = j-1
    end
    a[j+1] = v
    printArray(a)
  end
end

def printArray(a)
  str = ""
  for i in a
    str = str + i.to_s + " "
  end

  puts str.strip
end

insertionSort()

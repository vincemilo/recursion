def merge_sort(arr, i = 0)
  if arr.length < 2
    if i.odd?
      puts "Now only 1 element #{arr} remains on the left, so the array is returned."
    else
      puts "Now only 1 element #{arr} remains on the right, so the array is returned."
    end
    return arr
  end
  arr1 = arr[0..arr.length / 2 - 1]
  arr2 = arr[arr.length / 2..arr.length]
  puts "The left array is now #{arr1}."
  puts "The right array is now #{arr2}."
  if arr.length > 2
    puts "We continue to split the array, starting with the left array, until only one element remains."
  end
  merge(merge_sort(arr1, i += 1), merge_sort(arr2, i += 1))
end

def merge(left, right, arr = [])
  puts "We now go into the merge function."
  while !left.empty? && !right.empty?
    puts "Both sides currently have elements, #{left} on the left and #{right} on the right."
    if left[0] < right[0]
      puts "#{left[0]} on the left is less than #{right[0]} on the right so we move it to the array."
      arr.push(left.shift)
    else
      puts "#{right[0]} on the right is less than #{left[0]} on the left so we move it to the array."
      arr.push(right.shift)
    end
    puts "The array is now #{arr}."
  end

  if left.empty?
    puts "The left side is now empty, #{right} remains on the right."
  else
    puts "The right side is now empty, #{left} remains on the left."
  end

  until left.empty?
    puts "On the left, #{left} remains. The left-most number [#{left[0]}] is moved to the array."
    arr.push(left.shift)
    puts "The array is now #{arr}."
  end

  until right.empty?
    puts "On the right, #{right} remains. The left-most number [#{right[0]}] is moved to the array."
    arr.push(right.shift)
    puts "The array is now #{arr}."
  end

  arr
end

arr = [7, 8, 5, 6, 3, 4, 1, 2]
puts "The orignal array is #{arr}, which will be split in half."
merge_sort(arr)

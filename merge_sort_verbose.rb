def merge(left, right, arr = [])
  while !left.empty? && !right.empty?
    puts "Both sides have elements, #{left} on the left and #{right} on the right"
    if left[0] < right[0]
      puts "#{left[0]} on the left is less than #{right[0]} on the right so we remove it from the left and move it to 
the array."
      arr.push(left.shift)
    else
      arr.push(right.shift)
      puts "#{right[0]} on the right is less than #{left[0]} on the left so we remove it from the right and move it to
the array."
    end
  end
  if left.empty?
    puts "Merge array after left side is empty is #{arr}, #{right} remains on the right."
  else
    puts "Merge array after right side is empty is #{arr}, #{left} remains on the left."
  end
  arr.push(left.shift) until left.empty?
  arr.push(right.shift) until right.empty?
  puts "Merge array after both sides are empty is #{arr}."
  arr
end

arr = [7, 8, 5, 6, 3, 4, 1, 2]
merge_sort(arr)
arr2 = [7, 8, 5, 6, 3, 4, 1, 2, 9]
#p merge_sort(arr2)

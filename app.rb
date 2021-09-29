def fibs(num, i = 0, arr = [])
  while i < num
    if i < 2
      arr.push(i)
    else
      arr.push(i - 1 + i - 2)
    end
    i += 1
  end
  arr
end

def fibs_rec(num, i = 0, arr = [])
  while arr.length < num
    if i < 2
      arr.push(i)
    else
      arr.push(i - 1 + i - 2)
    end
    fibs_rec(num, i += 1, arr)
  end
  arr
end

# p fibs(5)
# p fibs_rec(5)

def merge_sort(arr, arr1 = [], arr2 = [], arr3 = [])
  return arr if arr.length <= 1

  arr1 = arr[0..arr.length / 2 - 1]
  arr2 = arr[arr.length / 2..arr.length]

  if arr3.empty?
    arr3 = merge_sort(arr1, arr1, arr2)
  else
    p 'test'
    arr[1]
  end
end

arr = [7,8,5,6,3,4,1,2]
p merge_sort(arr)
arr2 = [7,8,5,6,3,4,1,2,9]
#merge_sort(arr2)
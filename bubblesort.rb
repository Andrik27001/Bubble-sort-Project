def bubble_sort(arr)
  (0..(arr.length-2)).each do 
    (0..(arr.length-2)).each do |i|
      if arr[i]>arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
      end
    end
  end
  print arr
end

bubble_sort([1,4,6,2,3,9,7,5])
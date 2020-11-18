def bubble_sort(arr)
  swaps = 0
  # iteration= 0
  (0..(arr.length - 2)).each do
    # iteration+=1
    j = 2; swaps = 0
    (0..(arr.length - j)).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swaps += 1
      end
      j -= 1;
    end # inner loop
    break if swaps == 0
  end
  # print "Array #{arr} Swaps #{swaps} Iterations #{iteration}"
end

bubble_sort([1, 4, 6, 2, 3, 9, 7, 5])
# bubble_sort([1,4,6,8,12,14,15,16])

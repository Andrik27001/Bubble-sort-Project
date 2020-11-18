def bubble_sort(arr)
  swaps = 0
  (0..(arr.length - 2)).each do
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
end

bubble_sort([1, 4, 6, 2, 3, 9, 7, 5])

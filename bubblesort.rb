def bubble_sort(arr)
  swaps = 0
  (0..(arr.length - 2)).each do
    j = 2
    swaps = 0
    (0..(arr.length - j)).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swaps += 1
      end
      j -= 1
    end
    break if swaps.zero?
  end
  arr
end

def bubble_sort_by(arr)
  (0..(arr.length - 2)).each do |i|
    (arr[i], arr[i + 1] = arr[i + 1], arr[i]) if (yield arr[i], arr[i + 1]).positive?
  end
  arr
end

puts bubble_sort([2, 4, 1, 6, 3, 7]).inspect
puts (bubble_sort_by %w[hi hello hey] do |left, right|
  left.length - right.length
end).inspect

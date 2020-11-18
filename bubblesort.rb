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

puts bubble_sort([1, 4, 6, 2, 3, 9, 7, 5]).inspect

def bubble_sort_by(arr)  
  (0..(arr.length - 2)).each do |i|
    (arr[i], arr[i+1] = arr[i+1], arr[i]) if (yield arr[i], arr[i+1]).positive?
  end
  arr
end 

puts bubble_sort_by(["hey", "hi", "hello"]) { |left, right| left.length - right.length }
# https://www.theodinproject.com/courses/ruby-programming/lessons/bubble-sort

def bubble_sort(arr)
  sorted_arr = []

  while arr.length.positive?
    # Add the final value to `sorted_arr` if it is the only one left.
    next sorted_arr.unshift(arr.pop) if arr.length == 1

    arr.each_index do |i|
      # Swap adjacent values if the first value is greater than the second.
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i + 1] && arr[i] > arr[i + 1]
    end
    sorted_arr.unshift(arr.pop)
  end

  sorted_arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])      # [0, 2, 2, 3, 4, 78]
p bubble_sort([6, 5, 3, 1, 8, 7, 2, 4]) # [1, 2, 3, 4, 5, 6, 7, 8]

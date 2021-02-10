def bubble_sort(array)
  sorting = true
  while sorting
    sorting = false
    i = 0
    array.length.times do
      if array[i] > array[i + 1]
        array[i + 1], array[i] = array[i], array[i + 1]
        sorting = true
      end
      i += 1
      break if array.length - 1 == i
    end
  end
  p array
end

def bubble_sort_by(array)
  i = 0
  while i < array.length - 1
    is_bigger = yield(array[i], array[i + 1]).positive?
    if is_bigger
      array[i + 1], array[i] = array[i], array[i + 1]
      i = 0
    else
      i += 1
    end
  end
  p array
end

bubble_sort([5, 1, 3, 2, 4, 9, 7, 6, 8, -11])
bubble_sort_by(%w[hi hello hey asdf asdfa]) do |left, right|
  left.length - right.length
end

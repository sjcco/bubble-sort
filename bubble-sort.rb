def bubble_sort(array)
    sorting = true
    while sorting do
        sorting = false
        i = 0
        array.length.times do
            if array[i] > array[i+1]
                array[i+1], array[i] = array[i], array[i +1]
                sorting = true
            end
            i+=1
            break if array.length-1 == i
        end
    end
    p array
end



bubble_sort([5,1,3,2,4,9,7,6,8,-11])

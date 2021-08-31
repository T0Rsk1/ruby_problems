def bubble_sort(arr)
  last_v = arr[0]
  t = 0

  until t == arr.size do
    t = 0

    arr.each_with_index do |v, i|
      if v >= last_v
        last_v = v
        t += 1
      else
        arr[i-1] = v
        arr[i] = last_v
      end
    end
    
    last_v = arr[0]
  end

  arr
end

p bubble_sort([4,3,78,2,0,2])
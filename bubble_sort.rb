def bubble_sort(arr)
  last_v = arr[0]
  t = arr.size
  until t == 0 do
    arr.each_with_index do |v, i|
      break if t == i
      if v >= last_v
        last_v = v
      else
        arr[i-1] = v
        arr[i] = last_v
      end
    end
    t -= 1
    last_v = arr[0]
  end
  arr
end

<<<<<<< HEAD
p bubble_sort([4,3,78,2,0,2])
=======
p bubble_sort([4,3,78,2,0,2)
>>>>>>> 546a3eceda986b9b470cae82e42ed8ebcac36b6e

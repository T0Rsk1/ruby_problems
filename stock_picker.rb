def stock_picker(stocks)
  arr = stocks.map { |e| e }
  diff = 0
  largest = 0
  result = []
  arr.each_with_index do |v, i|
    max = arr.max
    diff = max - v
    if diff > largest
      largest = diff
      result =[i, arr.index(max)]
    else
      arr[i] = 0
    end
  end
  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])
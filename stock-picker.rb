def stock_picker(array)
  profits = {}

  (0..array.length - 1).each do |i|
    (i..array.length - 1).each do |j|
      profits[[i, j]] = array[j] - array[i]
    end
  end

  profits.max_by { |_k, v| v }[0]
end
p stock_picker([17, 3, 3, 9, 15, 18, 6, 11, 1])

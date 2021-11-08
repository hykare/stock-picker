def stock_picker(array)
  profits = {}

for i in 0..array.length-1 do 
    for j in i..array.length-1 do
        profits[[i,j]]=array[j]-array[i]
    end
end

max = profits.reduce(profits.values[0]) do |accumulator, (k,v)|
    v>accumulator ? v : accumulator
end

p profits.select {|k, v| v==max}.keys[0]


end

p stock_picker([17, 3, 3, 9, 15, 8, 6, 11, 1])

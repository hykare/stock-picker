def stock_picker(array)
  profits = {}
 
for i in 0..array.length-1 do 
    for j in i..array.length-1 do
        puts i.to_s<<", "<<j.to_s<<' -> '<<(array[j]-array[i]).to_s
        profits[[i,j]]=array[j]-array[i]
    end
end

  profits
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])

def stock_picker (array_days)
  max_profit = 0
  array_days.each.with_index.reduce(Array.new) do |result, (price, i)|
    for a in (i...array_days.length)
      if (array_days[a] - price) > max_profit
        result[0] = i
        result[1] = a
        max_profit = array_days[a] - array_days[i]
      end
    end
    result
  end
end

p stock_picker([17,3,6,9,15,8,6,1,10])
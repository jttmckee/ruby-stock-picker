def stock_picker(stockPrices)
  differences = Array.new(stockPrices.length, Array.new(stockPrices.length))
buyIndex = 0
sellIndex = 1
profit = stockPrices[1] - stockPrices[0]

  stockPrices.each_with_index do |firstPrice,firstIndex|
    stockPrices.each_with_index do |secondPrice,secondIndex|
      if secondIndex > firstIndex and (secondPrice - firstPrice) > profit
        profit = secondPrice - firstPrice
        buyIndex = firstIndex
        sellIndex = secondIndex
      end
    end
  end
  return [buyIndex,sellIndex]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])

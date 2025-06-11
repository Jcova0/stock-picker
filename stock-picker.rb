def stock_picker(stock_prices)
  buy = stock_prices[0]
  profit = 0
  stock_prices.each do |stock|
    if stock < buy
      buy = stock
    else
      profit = [profit, stock - buy].max
    end
  end
  puts profit
end

stock_picker([17,3,6,9,15,8,6,1,10])


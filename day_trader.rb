# day_trader.rb

def day_trader(prices)
  return nil if prices.empty? || prices.size < 2

  min_price = prices[0]
  min_index = 0
  max_profit = 0
  buy_day = 0
  sell_day = 0

  prices.each_with_index do |price, day|
    if price - min_price > max_profit
      max_profit = price - min_price
      buy_day = min_index
      sell_day = day
    end

    if price < min_price
      min_price = price
      min_index = day
    end
  end

  [buy_day, sell_day]
end

# Exemple :
# puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1, 4]

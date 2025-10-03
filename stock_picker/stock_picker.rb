# Implement a method #stock_picker that takes in an array of stock prices, 
# one for each hypothetical day. It should return a pair of days 
# representing the best day to buy and the best day to sell. Days start at 0.

def stock_picker(days)
  maximum_profit = 0
  days_to_return = [0,0]

  days.each_with_index do |buy_price, buy_day_idx |
    days[buy_day_idx + 1...days.length].each_with_index do |sell_price, sell_day_offset|
      sell_day_idx = buy_day_idx + 1 + sell_day_offset
      current_profit = sell_price - buy_price
      if current_profit > maximum_profit
        maximum_profit = current_profit
        days_to_return = [buy_day_idx, sell_day_idx]
      end
    end
  end
  case days_to_return 
  when [0,0]
    return "Do not buy. There is no profit to be made over this range."
  else
    days_to_return
  end
end



p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([17,3,6,9,15,8,6,1,10,1])
p stock_picker([3,6,9,15,8,6,1,10,1])
p stock_picker([3,15,9,15,8,6,1,10,1]) 
p stock_picker([3,15,9,8,6,1,10,1])
p stock_picker([15,9,8,6,1,10,1])
p stock_picker([5,4,3,2,1]) 
p stock_picker([1,2,3,4,5])
p stock_picker([5,5,5,5,5])
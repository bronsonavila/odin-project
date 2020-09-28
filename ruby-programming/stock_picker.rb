# https://www.theodinproject.com/courses/ruby-programming/lessons/stock-picker

def stock_picker(prices)
  best_purchase_date = nil
  best_sell_date = nil
  highest_profit = 0

  prices.each_with_index do |_, i|
    break if i == prices.length - 1 # Nothing to compare at final index.

    for j in i..prices.length - 1
      profit = prices[j] - prices[i]
      if profit > highest_profit
        best_purchase_date = i
        best_sell_date = j
        highest_profit = profit
      end
    end
  end

  [best_purchase_date, best_sell_date]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) # [1, 4]    (15 - 3 = 12)
p stock_picker([6, 8, 6, 17, 9, 15, 1, 10, 3]) # [0, 3]    (17 - 6 = 11)
p stock_picker([8, 6, 17, 9, 6, 3, 15, 10, 1]) # [5, 6]    (15 - 3 = 12)

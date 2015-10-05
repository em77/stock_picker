# Takes in an array of stock prices, one for each hypothetical day. It will 
# return a pair of days representing the best day to buy and the best day to 
# sell. Days start at 0.

def stock_picker(array)
  low_index = 0
  high_index = 0
  greatest_difference = 0

  array.each do |price1|
    array.each do |price2|
      if ((price2 - price1) > greatest_difference) && (array.index(price1) <
        array.index(price2))
        greatest_difference = price2 - price1
        low_index = array.index(price1)
        high_index = array.index(price2)
      end
    end
  end
  [low_index, high_index]
end

buy_sell = stock_picker([17,3,6,9,15,8,6,1,10])
puts "Buy: #{buy_sell[0]}"
puts "Sell: #{buy_sell[1]}"
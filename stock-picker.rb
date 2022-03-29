# Find best buy and sell days.  Buy must come before sell

prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
    best_profit = 0
    best_days = []
    
    # Price 2 will loop first, once through then price 1 will index once and price 2 will start again.
    prices.each_with_index do |price1, index1|
        prices.each_with_index do |price2, index2|

            profit = price2 - price1
        # Find best profit and make sure buy day comes before sell day  
        if profit > best_profit && index1 < index2
            best_profit = profit
            best_days = [index1, index2]
        end
    end
    end
    best_days
    end

 p stock_picker(prices)
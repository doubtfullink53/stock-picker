

def stock_picker(prices)
  mininum_price = prices[0]
  mininum_index = 0
  profit = 0
  buy_date = []

    prices.each_with_index do |price, index |
      if ( mininum_price > price)
         mininum_price = price
         mininum_index = index
        next
        
      end
     
      if (profit < price - mininum_price )
        profit = price - mininum_price
        buy_date = [mininum_index, index]
      end
    end

    
  buy_date.join(" , ")
  

    
   
  end
  




 puts stock_picker([17,3,6,9,15,8,6,1,10])
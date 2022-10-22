

def stock_picker(prices)

  buy_date = []
  profit = 0
  mininum_price = prices[0]
  mininum_index = 0
 
  

    prices.each_with_index do |price, index |

    subtract_price = price - mininum_price

      if ( mininum_price > price)
         mininum_price = price
         mininum_index = index
         
      elsif (profit <  subtract_price  )
        profit = subtract_price
        buy_date = [mininum_index, index]
      end
    end

    
  buy_date.join(" , ")
  

    
   
  end
  




 puts stock_picker([17,3,6,9,15,8,6,1,10])
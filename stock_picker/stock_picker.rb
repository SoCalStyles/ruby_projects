stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(price_array)

# find every difference between an element and a higher indexed element
differences = []
price_array.each do |first_number|
  price_array.each do |second_number|
    if price_array.index(second_number) > price_array.index(first_number)
      differences.push(second_number - first_number)
    end
  end
end

# compare differences and return the pair that matches biggest difference
answer_array = []
price_array.each do |first_number|
  price_array.each do |second_number|
    if price_array.index(second_number) > price_array.index(first_number)
      if (second_number - first_number) == differences.sort[-1]
        answer_array = [price_array.index(first_number), price_array.index(second_number)]
      end
    end
  end
end

return answer_array

end

stock_picker(stock_prices)


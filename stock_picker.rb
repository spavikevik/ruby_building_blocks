def stock_picker(prices)
  sell = prices.sort
  buy = sell.reverse
  best = [0, 0, 0]
  buy.each do |b|
    sell.each do |s|
      if prices.index(s) >= prices.index(b) && best[0] <= s - b
        best[0] = s - b
        best[1] = prices.index(b)
        best[2] = prices.index(s)
      end
    end
  end
  return best[1..2]
end

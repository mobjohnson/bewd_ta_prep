def deck_o_cards
  values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
  suits = ['hearts', 'diamonds', 'clubs', 'spades']

  # ... build your deck ...

  cards = []

  suits.each do |suit|
    values.each do |value|
      cards.push({suit: suit, value: value})
    end
  end

  p cards
  
end

deck_o_cards

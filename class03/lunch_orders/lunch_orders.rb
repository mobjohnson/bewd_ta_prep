orders = {}
items = []
another_order = 'y'
another_item = 'y'
while another_order == 'y'
  puts 'Name for order:'
  name = gets.chomp
  while another_item == 'y'
    puts "#{name} wants to order:"
    item = gets.chomp
    items << item
    puts 'Add another item to order? (Y/N)'
    another_item = gets.chomp.downcase
  end
  orders[name] = items
  # p orders  
  puts 'Add another order? (Y/N)'
  another_order = gets.chomp.downcase
  another_item = 'y'
end
orders.each do |name, items|
  print name 
  items.each do |item|
    print item + 'and'
  end
end




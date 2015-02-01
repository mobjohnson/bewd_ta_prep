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
  puts 'Add another order? (Y/N)'
  another_order = gets.chomp.downcase
  another_item = 'y'
  items = []
end

orders.each do |name, items|
  p items.length
  print name + ' ordered a '
  i = 0
  while i < items.length
    if items.length > 2 && i < (items.length - 2)
      print items[i] + ', '
    elsif items.length > 1 && i < (items.length - 1)
      print items[i] + ' & '
    else
      puts items[i]
    end
    i += 1
  end
end




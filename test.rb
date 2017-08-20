# "product_1=1,product_2=4,product_3=2,"

orders = "product_1=1,product_2=4,product_3=2,"

items1 = orders.split(',')
puts items1.inspect
puts

@items = {}
items1.each do |x|
  items2 = x.split(/=/)
  items3 = items2[0].split(/_/)
  key = items3[1]
  value = items2[1]

  @items[key.to_i] = value.to_i

  puts @items.inspect
end

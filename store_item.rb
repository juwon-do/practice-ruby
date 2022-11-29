item1 = {color: "red", price: 100_000, weight: 50}
item2 = {color: "blue", price: 70_000, weight: 30}
item3 = {:color => "yellow", :price => 50_000, :weight => 10}

p "Color is #{item1[:color]}, price is #{item1[:price]}, and weight is #{item1[:weight]}"

class Item
  def initialize(input_color, input_price, input_weight)
    @color = input_color
    @price = input_price
    @weight = input_weight
  end

  def print_item_info
    p "Color is #{@color}, price is #{@price}, and weight is #{@weight}."
  end


end 

item1 = Item.new("red", 100_000, 70)
p item1.print_item_info
item2 = Item.new("blue", 70_000, 50)
p item2.print_item_info
item3 = Item.new("yellow", 50_000, 30)
p item3.print_item_info
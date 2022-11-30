
class Item
  attr_reader :color, :price, :weight
  attr_writer :color, :price, :weight

  def initialize(input_option)
    @color = input_option[:input_color]
    @price = input_option[:input_price]
    @weight = input_option[:input_weight]
  end

  def print_item_info
    p "Color is #{@color}, price is #{@price}, and weight is #{@weight}."
  end
  
  def inflated_price
    @price*= 1.2
  end 
end 

item1 = Item.new(input_color: "red", input_price: 100_000, input_weight: 70)
p item1.print_item_info
item1.inflated_price
p item1.print_item_info
item2 = Item.new(input_color: "blue", input_price: 70_000, input_weight: 50)
p item2.print_item_info
item3 = Item.new(input_color: "yellow", input_price: 50_000, input_weight: 30)
p item3.print_item_info
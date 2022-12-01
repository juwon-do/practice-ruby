module Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end


class Car
  include Vehicle
    def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new
car1.honk_horn
p car1
car1.accelerate
p car1

bike1 = Bike.new
bike1.ring_bell
bike1.turn("south")
p bike1

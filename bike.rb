# Bike

class Bike
  attr_accessor :id, :color, :price, :weight, :rented, :cargo_storage

  STANDARD_WEIGHT = 200 # lbs

  def initialize(id, color, price, cargo_storage, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo_storage = cargo_storage
  end

  def rent!
    self.rented = true
  end

  def pannier_capacity
    cargo_storage.max_capacity
  end

  def pannier_remaining_capacity
    cargo_storage.remaining_capacity
  end
end

class CargoStorage
  attr_reader :cargo_contents, :max_capacity

  def initialize(max_capacity = 10)
    @max_capacity = max_capacity
    @cargo_contents = []
  end

  def add_cargo(item)
    raise 'No space available for more cargo' if cargo_contents.size >= max_capacity

    cargo_contents << item
  end

  def remove_cargo(item)
    cargo_contents.delete(item)
  end

  def remaining_capacity
    max_capacity - cargo_contents.size
  end
end

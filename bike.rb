# Bike
require_relative 'luggage'

class Bike
  BASE_WEIGHT = 200 # lbs
  PRICE_PER_WEIGHT = 2 # $ per lb

  attr_reader :id, :color, :base_price, :weight, :luggage

  def initialize(id, color, base_price, extra_items)
    @id = id
    @color = color
    @base_price = base_price
    @weight = BASE_WEIGHT
    @luggage = Luggage.new(extra_items)
  end

  def price
    base_price + (PRICE_PER_WEIGHT * total_weight)
  end

  def total_weight
    weight + luggage.weight
  end
end
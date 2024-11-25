class Luggage

  DEFAULT_MAX_CAPACITY = 10
  ITEM_WEIGHT = 10

  attr_reader :items

  def initialize(items)
    @items = items
  end

  def weight
    items.size * ITEM_WEIGHT
  end

end
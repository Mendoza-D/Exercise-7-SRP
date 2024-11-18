#! /usr/bin/env ruby

require_relative 'bike'

# Create a cargo storage instance with a default capacity of 10 items
cargo_storage = CargoStorage.new

# Instantiate a Bike with the cargo storage
bike = Bike.new(1, :pink, 99.99, cargo_storage)

# Add cargo items
bike.cargo_storage.add_cargo(:apples)
bike.cargo_storage.add_cargo(:water)
bike.cargo_storage.add_cargo(:repair_kit)

puts "Space for #{bike.pannier_remaining_capacity} items left."

# Rent the bike
bike.rent!

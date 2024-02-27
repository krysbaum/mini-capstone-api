# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.create(name: "NuPhone", price: 1200, image_url: nil, description: "This is the phone that will take you to the future.")
Product.create(name: "CoM9U70R", price: 2200, image_url: nil, description: "This is the only laptop you'll ever need.")
Product.create(name: "Zubz", price: 750, image_url: nil, description: "The greatest sounds headphones have to offer.")

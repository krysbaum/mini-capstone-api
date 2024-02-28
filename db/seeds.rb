# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.create(name: "NuPhone", price: 1200, image_url: "https://thumbs.dreamstime.com/b/futuriatic-transparent-glass-phone-technology-concept-high-temperature-weather-forecast-sunny-day-icon-show-screen-222585873.jpg", description: "Take yourself into the future.")
Product.create(name: "CoM9U70R", price: 2200, image_url: "https://cdn.mos.cms.futurecdn.net/4mfNfwcK83FcRprS2yeMoK-1920-80.jpg.webp", description: "The only laptop you'll ever need.")
Product.create(name: "Zubz", price: 750, image_url: "https://cdn.vox-cdn.com/thumbor/7eUJVmyvhCj2rckyiOg_xEFeRrQ=/0x0:2040x1351/1400x1050/filters:focal(1020x675:1021x676)/cdn.vox-cdn.com/uploads/chorus_asset/file/15729086/sony-future-lab-project-n-sxsw-2016-2.0.0.1457894980.jpg", description: "The greatest sounds headphones have to offer.")
Product.create(name: "The Scr33n", price: 550, image_url: "placeholder.jpeg", description: "Expand your horizons.")

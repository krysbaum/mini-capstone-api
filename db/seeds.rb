# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Supplier.create!(name: "L3m0n Inc.", email: "lemons@example.com", phone_number: "888-444-5555 ext: 1")
Supplier.create!(name: "Ndr!ve Inc.", email: "ndrive@example.com", phone_number: "999-333-2222")

Product.create!(name: "NuPhone", price: 1200, description: "Take yourself into the future.", inventory: 6, supplier_id: 1)
Product.create!(name: "CoM9U70R", price: 2200, description: "The only laptop you'll ever need.", inventory: 3, supplier_id: 1)
Product.create!(name: "Zubz", price: 750, description: "The greatest sounds headphones have to offer.", inventory: 13, supplier_id: 2)
Product.create!(name: "The Scr33n", price: 550, description: "Expand your horizons.", inventory: 9, supplier_id: 1)

Image.create!(url: "https://thumbs.dreamstime.com/b/futuriatic-transparent-glass-phone-technology-concept-high-temperature-weather-forecast-sunny-day-icon-show-screen-222585873.jpg", product_id: 1)
Image.create!(url: "https://cdn.mos.cms.futurecdn.net/4mfNfwcK83FcRprS2yeMoK-1920-80.jpg.webp", product_id: 2)
Image.create!(url: "https://cdn.vox-cdn.com/thumbor/7eUJVmyvhCj2rckyiOg_xEFeRrQ=/0x0:2040x1351/1400x1050/filters:focal(1020x675:1021x676)/cdn.vox-cdn.com/uploads/chorus_asset/file/15729086/sony-future-lab-project-n-sxsw-2016-2.0.0.1457894980.jpg", product_id: 3)
Image.create!(url: "https://www.yankodesign.com/images/design_news/2018/04/transparent_television_layout.jpg", product_id: 4)

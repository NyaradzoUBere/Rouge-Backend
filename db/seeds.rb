# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table "products", force: :cascade do |t|
#     t.string "brand"
#     t.string "name"
#     t.float "price"
#     t.string "price_sign"
#     t.string "currency"
#     t.string "image_link"
#     t.string "product_link"
#     t.string "website_link"
#     t.text "description"
#     t.string "category"
#     t.string "product_type"
#     t.string "product_colors", default: [], array: true
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

require 'rest-client'
require 'json'
# require 'pry'

base_url = "http://makeup-api.herokuapp.com/api/v1/products.json"

data = RestClient.get(base_url)


product_data = JSON.parse(data)
# binding.pry

product_data.each do |product|
    Product.create(
        brand: product["brand"],
        name: product["name"],
        price: product["price"],
        price_sign: product["price_sign"],
        currency: product["currency"],
        image_link: product["image_link"],
        product_link: product["product_link"],
        website_link: product["website_link"],
        description: product["description"],
        category: product["category"],
        product_type: product["product_type"],
        product_colors: product["product_colors"]
    )
end
    

# puts "hello"
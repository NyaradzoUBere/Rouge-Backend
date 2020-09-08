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

base_url = "http://makeup-api.herokuapp.com/api/v1/products.json"

data = RestClient.get(base_url)

binding.pry
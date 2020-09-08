class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :name
      t.float :price
      t.string :price_sign
      t.string :currency
      t.string :image_link
      t.string :product_link
      t.string :website_link
      t.text :description
      t.string :category
      t.string :product_type
      t.string :product_colors, array: true, default: []

      t.timestamps
    end
  end
end

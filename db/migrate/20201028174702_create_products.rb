class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :description
      t.belongs_to :category, null: false, foreign_key: true
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end

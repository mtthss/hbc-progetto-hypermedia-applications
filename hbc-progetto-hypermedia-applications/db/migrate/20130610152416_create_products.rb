class CreateProducts < ActiveRecord::Migration

  def change
    create_table :products do |t|
      t.string :name
      t.date :on_market_on
      t.integer :product_type_id
      t.boolean :must_have
      t.text :description
      t.string :image_url
      t.string :tech_image_url
      t.text :datasheet
      t.integer :partner_id
      t.integer :suggested_product_id
      t.timestamps
    end
  end
end

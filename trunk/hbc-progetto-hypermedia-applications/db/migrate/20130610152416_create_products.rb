class CreateProducts < ActiveRecord::Migration

  def change
    create_table :products do |t|
      t.string :name
      t.date :on_market_on
      t.boolean :must_have
      t.text :description
      t.integer :suggested_product_id
      t.timestamps
    end
  end
end

class CreateProductsSuggestedProductsJoin < ActiveRecord::Migration
  def up
    create_table :products_suggested_products, :id => false do |t|
      t.integer "product_id"
      t.integer "suggested_product_id"
    end
  end

  def down
    drop_table :products_suggested_products
  end
end

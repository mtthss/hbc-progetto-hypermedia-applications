class CreateProductsShops < ActiveRecord::Migration
  def up
    create_table :products_shops, :id => false do |t|
      t.integer "product_id"
      t.integer "shop_id"
    end
  end

  def down
    drop_table :products_shops
  end
end

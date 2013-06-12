class CreateDesignersProductsJoin < ActiveRecord::Migration
  def up
    create_table :designers_products, :id => false do |t|
      t.integer "designer_id"
      t.integer "product_id"
    end
    add_index :designers_products, ["designer_id","product_id"]
  end

  def down
    drop_table :designers_products
  end
end

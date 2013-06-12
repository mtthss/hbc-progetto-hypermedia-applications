class CreateProductsServicesJoin < ActiveRecord::Migration
  def up
    create_table :products_services, :id => false do |t|
      t.integer "product_id"
      t.integer "service_id"
    end
    add_index :products_services, ["product_id","service_id"]
  end

  def down
    drop_table :products_services
  end
end

class CreateEventsProductsJoin < ActiveRecord::Migration
  def up
    create_table :events_products, :id => false do |t|
      t.integer "event_id"
      t.integer "product_id"
    end
    add_index :events_products, ["event_id","product_id"]
  end

  def down
    drop_table :events_products
  end
end

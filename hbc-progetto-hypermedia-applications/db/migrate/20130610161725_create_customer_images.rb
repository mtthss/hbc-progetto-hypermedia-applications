class CreateCustomerImages < ActiveRecord::Migration
  def change
    create_table :customer_images do |t|
      t.integer :customer_id
      t.string :image_url
      t.timestamps
    end
  end
end

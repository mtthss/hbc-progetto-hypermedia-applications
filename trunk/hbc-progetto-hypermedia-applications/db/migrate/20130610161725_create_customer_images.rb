class CreateCustomerImages < ActiveRecord::Migration
  def change
    create_table :customer_images do |t|

      t.timestamps
    end
  end
end

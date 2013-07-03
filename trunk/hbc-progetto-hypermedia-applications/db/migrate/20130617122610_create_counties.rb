class CreateCounties < ActiveRecord::Migration
  def change
    create_table :counties do |t|
      t.string :name
      t.integer :"country_id"

      t.timestamps
    end
  end
end

class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end
end

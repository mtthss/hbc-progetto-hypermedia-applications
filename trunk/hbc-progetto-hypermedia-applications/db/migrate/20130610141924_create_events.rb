
class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :location
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end

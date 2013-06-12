class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :name
      t.text :bio
      t.string :image
      t.boolean :top

      t.timestamps
    end
  end
end

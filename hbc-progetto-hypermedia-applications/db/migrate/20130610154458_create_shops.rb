class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :type
      t.string :address
      t.string :tel
      t.string :email
      t.string :regione
      t.string :provincia

      t.timestamps
    end
  end
end

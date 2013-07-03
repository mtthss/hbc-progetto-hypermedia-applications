class CreateCountries < ActiveRecord::Migration
  def change
    create_table :Countries do |t|
      t.string :name

      t.timestamps
    end
  end
end

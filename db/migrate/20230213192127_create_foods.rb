class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :measurement_unit
      t.string :price
      t.integer :qulity

      t.timestamps
    end
  end
end
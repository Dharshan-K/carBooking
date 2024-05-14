class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.integer :carID
      t.string :carModel
      t.string :carNumber
      t.string :status
      t.integer :price

      t.timestamps
    end
  end
end

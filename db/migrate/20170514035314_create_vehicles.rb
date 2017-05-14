class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :owner_name
      t.string :nick_name
      t.integer :year
      t.string :make
      t.string :model
      t.integer :original_odometer
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

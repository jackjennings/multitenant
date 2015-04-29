class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :number
      t.decimal :price

      t.timestamps null: false
    end
  end
end

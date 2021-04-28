class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :value
      t.string :address
      t.string :age
      t.text :memo

      t.timestamps
    end
  end
end
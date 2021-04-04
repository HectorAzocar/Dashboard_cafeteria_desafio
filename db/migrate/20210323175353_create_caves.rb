class CreateCaves < ActiveRecord::Migration[5.2]
  def change
    create_table :caves do |t|
      t.string :blend_name
      t.string :origin
      t.integer :price

      t.timestamps
    end
  end
end

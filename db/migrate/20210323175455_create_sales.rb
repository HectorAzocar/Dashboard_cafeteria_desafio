class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :amount
      t.datetime :sale_date
      t.references :cafe, foreign_key: true

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :cost
      t.integer :product_id

      t.timestamps null: false
    end
  end
end

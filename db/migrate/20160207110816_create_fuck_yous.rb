class CreateFuckYous < ActiveRecord::Migration
  def change
    create_table :fuck_yous do |t|

      t.timestamps null: false
    end
  end
end

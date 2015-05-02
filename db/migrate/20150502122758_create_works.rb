class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.integer :plant_id
      t.string :name, :limit => 50
      t.string :timing
      t.text :detail, :limit => 1000

      t.timestamps
    end
  end
end

class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :user_id
      t.string :name, :limit => 30
      t.string :around_coordinates
      t.float :scale
      t.float :area
      t.text :note, :limit => 1000

      t.timestamps
    end
  end
end

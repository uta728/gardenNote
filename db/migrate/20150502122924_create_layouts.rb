class CreateLayouts < ActiveRecord::Migration
  def change
    create_table :layouts do |t|
      t.integer :user_id
      t.integer :section_id
      t.string :group
      t.string :name
      t.string :class
      t.string :background
      t.string :border
      t.string :z_index
      t.integer :size
      t.string :point

      t.timestamps
    end
  end
end

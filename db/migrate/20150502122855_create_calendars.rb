class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.integer :user_id
      t.date :start_date
      t.date :end_date
      t.integer :plant_id
      t.integer :work_id
      t.integer :layout_id
      t.string :title, :limit => 20
      t.string :icon
      t.string :color
      t.text :detail, :limit => 1000
      t.boolean :is_plan

      t.timestamps
    end
  end
end

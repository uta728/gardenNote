class CreateDiarys < ActiveRecord::Migration
  def change
    create_table :diarys do |t|
      t.integer :user_id
      t.date :write_date
      t.string :title
      t.text :contents, :limit => 4000
      t.boolean :fixed
      t.text :tags, :limit => 1000

      t.timestamps
    end
  end
end

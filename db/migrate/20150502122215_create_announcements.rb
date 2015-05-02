class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.integer :user_id
      t.string :subject, :limit => 50
      t.string :category, :limit => 1
      t.text :detail, :limit => 1000
      t.boolean :unread
      t.time :term_s
      t.time :term_e

      t.timestamps
    end
  end
end

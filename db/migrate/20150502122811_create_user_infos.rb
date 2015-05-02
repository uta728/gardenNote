class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.integer :user_id
      t.string :name, :limit => 20
      t.string :sex, :limit => 1
      t.date :birthday
      t.string :area
      t.string :area_category, :limit => 1
      t.date :begin_date
      t.text :profile, :limit => 1000
      t.text :weblog_url, :limit => 500

      t.timestamps
    end
  end
end

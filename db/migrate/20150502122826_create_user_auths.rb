class CreateUserAuths < ActiveRecord::Migration
  def change
    create_table :user_auths do |t|
      t.integer :user_id
      t.integer :auth_level, :limit => 2

      t.timestamps
    end
  end
end

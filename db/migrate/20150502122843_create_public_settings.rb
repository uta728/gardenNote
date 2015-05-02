class CreatePublicSettings < ActiveRecord::Migration
  def change
    create_table :public_settings do |t|
      t.integer :user_id
      t.string :func
      t.boolean :is_public

      t.timestamps
    end
  end
end

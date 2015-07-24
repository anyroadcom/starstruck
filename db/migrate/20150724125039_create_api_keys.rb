class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      t.string :access_token, null: false

      t.timestamps

      t.index :access_token, unique: true
    end
  end
end

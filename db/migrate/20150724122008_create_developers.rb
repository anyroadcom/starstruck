class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :slug, null: false
      t.string :email, null: false
      t.string :name, default: ''
      t.integer :stars, default: 0

      t.timestamps

      t.index :slug, unique: true
      t.index :email, unique: true
    end
  end
end

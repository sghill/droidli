class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.string :name, :null => false
      t.string :url

      t.timestamps
    end
    add_index :licenses, :name, :unique => true
  end
end

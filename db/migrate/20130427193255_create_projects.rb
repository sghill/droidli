class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, :null => false
      t.string :url
      t.references :license
      t.boolean :in_maven_central, :null => false, :default => false

      t.timestamps
    end
    add_index :projects, :license_id
    add_index :projects, :name, :unique => true
  end
end

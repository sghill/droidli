class CreateLicenseContributions < ActiveRecord::Migration
  def change
    create_table :license_contributions do |t|
      t.references :user, :null => false
      t.references :license, :null => false
      t.string :action, :null => false
      t.boolean :tweetable, :null => false
      t.boolean :tweeted, :null => false, :default => false

      t.timestamps
    end
    add_index :license_contributions, :user_id
    add_index :license_contributions, :license_id
    add_index :license_contributions, :action
    add_index :license_contributions, :tweetable
    add_index :license_contributions, :tweeted
  end
end

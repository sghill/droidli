class CreateProjectContributions < ActiveRecord::Migration
  def change
    create_table :project_contributions do |t|
      t.references :user, :null => false
      t.references :project, :null => false
      t.string :action, :null => false
      t.boolean :tweetable, :null => false, :default => false
      t.boolean :tweeted, :null => false, :default => false

      t.timestamps
    end
    add_index :project_contributions, :user_id
    add_index :project_contributions, :project_id
    add_index :project_contributions, :action
    add_index :project_contributions, :tweetable
    add_index :project_contributions, :tweeted
  end
end

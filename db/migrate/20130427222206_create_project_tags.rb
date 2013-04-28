class CreateProjectTags < ActiveRecord::Migration
  def change
    create_table :project_tags do |t|
      t.references :project, :null => false
      t.references :tag, :null => false

      t.timestamps
    end
    add_index :project_tags, :project_id
    add_index :project_tags, :tag_id
  end
end

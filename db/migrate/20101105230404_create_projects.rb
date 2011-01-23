class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.string :full_description
      t.string :short_description

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end

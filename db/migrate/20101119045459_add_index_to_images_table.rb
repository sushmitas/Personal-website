class AddIndexToImagesTable < ActiveRecord::Migration
  def self.up
  	add_index :images, :project_id
  end

  def self.down
  	remove_index :images, :project_id
  end
end

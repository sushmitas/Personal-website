class AddDateToProjects < ActiveRecord::Migration
  def self.up
  	add_column :projects, :proj_date, :date
  end

  def self.down
  	remove_column :projects, :proj_date
  end
end

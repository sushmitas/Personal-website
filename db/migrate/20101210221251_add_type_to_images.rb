class AddTypeToImages < ActiveRecord::Migration
  def self.up
  	add_column :images, :mediatype, :integer, :default => nil
  end

  def self.down
  	remove_column :images, :mediatype
  end
end

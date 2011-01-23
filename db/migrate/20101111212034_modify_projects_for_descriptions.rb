class ModifyProjectsForDescriptions < ActiveRecord::Migration
  def self.up
  	change_table :projects do |t|
			t.rename :full_description, :desc_col1
			t.string :desc_col2
			t.string :desc_col3
  	end
  end

  def self.down
  	change_table :projects do |t|
			t.rename :desc_col1, :full_description
			t.remove :desc_col2
			t.remove :desc_col3
  	end
  end
end

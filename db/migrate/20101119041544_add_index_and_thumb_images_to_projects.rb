class AddIndexAndThumbImagesToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
			t.string :thumb_img_filename
			t.string :index_img_filename
		end
  end

  def self.down
  	change_table :projects do |t|
  		t.remove :thumb_img_filename
  		t.remove :index_img_filename
  	end
  end
end

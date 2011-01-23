class AddImagesFolderNameRemoveThumbAndIndexImgName < ActiveRecord::Migration
  def self.up
  	change_table :projects do |t|
			t.rename :thumb_img_filename, :imgs_folder_name
			t.remove :index_img_filename
  	end
  end

  def self.down
  	change_table :projects do |t|
  		t.rename :imgs_folder_name, :thumb_img_filename
  		t.add :index_img_filename, :string
  	end
  end
end

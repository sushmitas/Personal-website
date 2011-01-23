class AddImgsFolderNameToPersonal < ActiveRecord::Migration
  def self.up
    add_column :personals, :imgs_folder_name, :string
  end

  def self.down
    remove_column :personals, :imgs_folder_name
  end
end

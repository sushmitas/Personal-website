class ConvertStringsToText < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
			t.change :desc_col1, :text
			t.change :desc_col2, :text
			t.change :desc_col3, :text
  	end
  end

  def self.down
  	change_table :projects do |t|
  		t.change :desc_col1, :string
  		t.change :desc_col2, :string
  		t.change :desc_col3, :string
  	end
  end
end

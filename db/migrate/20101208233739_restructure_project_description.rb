class RestructureProjectDescription < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
			t.rename :desc_col1, :description
			t.remove :desc_col2
			t.remove :desc_col3
  	end
  end

  def self.down
  	change_table :projects do |t|
  		t.rename :description, :desc_col1
  		t.add :desc_col2, :text
  		t.add :desc_col1, :text
  	end
  end
end

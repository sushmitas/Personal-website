class AddProjectBegAndEndDate < ActiveRecord::Migration
  def self.up
  change_table :projects do |t|
			t.rename :proj_date, :proj_beg_date
			t.date :proj_end_date
  	end
  end

  def self.down
  	change_table :projects do |t|
			t.rename :proj_beg_date, :proj_date
			t.remove :proj_end_date
  	end
  end
end

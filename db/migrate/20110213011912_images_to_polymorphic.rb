class ImagesToPolymorphic < ActiveRecord::Migration
  def self.up
		change_table :images do |t|
				t.references :imagery, :polymorphic => true
		end
  end

  def self.down
		change_table :images do |t|
  			t.remove :imagery_type
  			t.remove :imagery_id
  		end
  end
end

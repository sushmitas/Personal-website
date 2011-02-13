# == Schema Information
# Schema version: 20110122205957
#
# Table name: personals
#
#  id               :integer(4)      not null, primary key
#  name             :string(255)
#  description      :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  imgs_folder_name :string(255)
#

class Personal < ActiveRecord::Base
	attr_accessible :name, :description,
									:imgs_folder_name, :images_attributes
	
	validates :name,	:presence => true,
										:uniqueness => { :case_sensitive => false }
	
	has_many :images, :as => :imagery, :dependent => :destroy
	accepts_nested_attributes_for :images, :allow_destroy => :true,
		:reject_if => :all_blank #proc { |attrs| attrs.all? { |k, v| v.blank?} }
	
	default_scope :order => 'personals.name'


end

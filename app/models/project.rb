# == Schema Information
# Schema version: 20101228005543
#
# Table name: projects
#
#  id                :integer(4)      not null, primary key
#  name              :string(255)
#  description       :text
#  short_description :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  imgs_folder_name  :string(255)
#  proj_beg_date     :date
#  proj_end_date     :date
#

require 'digest'

class Project < ActiveRecord::Base
	attr_accessible :name, :short_description, :description,
									:imgs_folder_name, :images_attributes, 
									:proj_beg_date, :proj_end_date
	
	validates :name,	:presence => true,
										:uniqueness => { :case_sensitive => false }
	
	has_many :images, :as => :imagery, :dependent => :destroy
	accepts_nested_attributes_for :images, :allow_destroy => :true,
		:reject_if => :all_blank #proc { |attrs| attrs.all? { |k, v| v.blank?} }
	
	default_scope :order => 'projects.proj_end_date DESC'
end

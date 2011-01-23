# == Schema Information
# Schema version: 20101210221251
#
# Table name: images
#
#  id         :integer(4)      not null, primary key
#  filename   :string(255)
#  caption    :text
#  project_id :integer(4)
#  created_at :datetime
#  updated_at :datetime
#  mediatype  :integer(4)
#

class Image < ActiveRecord::Base
	attr_accessible :filename, :caption, :mediatype
	belongs_to :project
	
	validates :filename, :presence => true
	validates :mediatype, :presence =>true
	
	default_scope :order => 'images.created_at'
end

class Tag < ActiveRecord::Base
  attr_accessible :name
  has_many :project_tags
  has_many :projects, :through => :project_tags
end

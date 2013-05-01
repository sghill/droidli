class Project < ActiveRecord::Base
  belongs_to :license
  has_many :project_tags
  has_many :tags, :through => :project_tags
  has_many :project_contributions

  attr_accessible :in_maven_central, :name, :url, :license_id
  attr_accessor :updated_by, :tweetable
end

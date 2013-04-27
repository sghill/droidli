class Project < ActiveRecord::Base
  belongs_to :license
  attr_accessible :in_maven_central, :name, :url, :license_id
  attr_accessor :updated_by, :tweetable
end

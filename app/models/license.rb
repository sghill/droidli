class License < ActiveRecord::Base
  has_many :projects
  attr_accessible :name, :url
  attr_accessor :updated_by, :tweetable
end

class License < ActiveRecord::Base
  attr_accessible :name, :url
  attr_accessor :updated_by, :tweetable
end

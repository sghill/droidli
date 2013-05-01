class ProjectContribution < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  attr_accessible :action, :tweetable, :tweeted, :user, :project
end

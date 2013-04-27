class LicenseContribution < ActiveRecord::Base
  belongs_to :user
  belongs_to :license
  attr_accessible :user, :license, :action, :tweetable
end

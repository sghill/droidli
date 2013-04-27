class LicenseObserver < ActiveRecord::Observer
  def after_create(record)
    LicenseContribution.create!({:user => record.updated_by, :license => record, :action => :create, :tweetable => record.tweetable})
  end
end

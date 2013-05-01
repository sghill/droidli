class ProjectObserver < ActiveRecord::Observer
  def after_create(project)
    ProjectContribution.create({:user => project.updated_by, :project => project, :action => :create, :tweetable => project.tweetable})
  end
end

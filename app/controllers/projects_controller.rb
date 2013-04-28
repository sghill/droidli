class ProjectsController < ApplicationController
  skip_before_filter :require_login, :only => :index

  def index
    @projects = Project.limit(250)
  end

  def new
    @project = Project.new
    @licenses = License.limit(100).collect { |l| [l.name, l.id] }
  end

  def create
    @project = Project.new(params[:project])
    @project.tweetable = params[:tweetable]
    @project.updated_by = current_user
    params[:tags].split(" ").each do |tag_name|
      @project.tags.build(Tag.find_or_create_by_name(tag_name))
    end
    if @project.save
      flash[:notice] = "thanks for adding a library, @#{current_user.name}!"
      redirect_to projects_url
    else
      render :new
    end
  end
end

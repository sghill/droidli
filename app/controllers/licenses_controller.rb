class LicensesController < ApplicationController
  skip_before_filter :require_login, :only => :index

  def index
    @licenses = License.limit(100)
  end

  def new
    @license = License.new
  end

  def create
    @license = License.new(params[:license])
    @license.updated_by = current_user
    @license.tweetable = params[:tweetable]
    if @license.save
      flash[:notice] = "thanks for adding a license, @#{current_user.name}!"
      redirect_to licenses_url
    else
      render :new
    end
  end

end

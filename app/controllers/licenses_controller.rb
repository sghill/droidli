class LicensesController < ApplicationController
  before_filter :authenticate, :except => :index

  def index
    @licenses = License.all
  end

  def new
    @license = License.new
  end

  def create
    @license = License.new(params[:license])
    @license.updated_by = current_user
    @license.tweetable = params[:tweetable]
    if @license.save
      flash[:notice] = "thanks for adding a license, #{current_user.name}"
      redirect_to licenses_url
    else
      render :new
    end
  end

  private
  def authenticate
    redirect_to root_url if current_user.nil?
  end
end

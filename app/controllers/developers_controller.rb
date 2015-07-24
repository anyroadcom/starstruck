class DevelopersController < ApiController::Base
  before_filter :authorize!

  def index
    @developers = Developer.all
    render json: @developers
  end

  def show
    @developer = Developer.where(slug: params[:slug]).first!
    render json: @developer
  end

  def stars
    @developer = Developer.where(slug: params[:slug]).first!
    @developer.add_star!
    render json: @developer, status: :ok
  end
end
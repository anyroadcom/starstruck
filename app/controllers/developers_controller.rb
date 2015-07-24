class DevelopersController < ApiController::Base
  def stars
    @developer = Developer.where(slug: params[:slug]).first!
    @developer.add_star!
    render json: @developer, status: :ok
  end
end
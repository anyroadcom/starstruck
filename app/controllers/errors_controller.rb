class ErrorsController < ApiController::Base
  def not_found
    render json: { message: 'Not found' }, status: :not_found
  end
end
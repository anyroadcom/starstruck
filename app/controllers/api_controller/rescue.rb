module ApiController
  module Rescue
    extend ActiveSupport::Concern

    included do
      rescue_from StandardError do |exception|
        render json: { message: 'Something went wrong' }, status: :internal_error
      end

      rescue_from ActiveRecord::RecordNotFound do |exception|
        render json: { message: 'Resource not found' }, status: :not_found
      end

      rescue_from ActiveRecord::RecordInvalid do |exception|
        render json: { message: 'Resource invalid', errors: exception.record.errors }, status: :unprocessable_entity
      end

      rescue_from ActionController::BadRequest do |exception|
        render json: { message: 'Bad request' }, status: :bad_request
      end

      rescue_from ActionController::UnknownFormat, ActionController::UnknownHttpMethod, ActionController::ParameterMissing do |exception|
        render json: { message: 'Bad request' }, status: :bad_request
      end

      rescue_from ActionController::RoutingError, ActionController::UrlGenerationError do |exception|
        render json: { message: 'Not found' }, status: :not_found
      end

      rescue_from ApiController::UnsupportedMediaType do |exception|
        render json: { message: 'Unsupported content type' }, status: :unsupported_media_type
      end

      rescue_from ApiController::Unauthorized do |exception|
        render json: { message: 'Unauthorized' }, status: :unauthorized
      end

      rescue_from ApiController::Forbidden do |exception|
        render json: { message: 'Forbidden' }, status: :forbidden
      end

      rescue_from ApiController::Conflict do |exception|
        render json: { message: 'Conflict' }, status: :conflict
      end
    end
  end
end
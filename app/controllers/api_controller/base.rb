require_dependency 'api_controller/exceptions'

module ApiController
  class Base < ActionController::Base
    include ApiController::Rescue

    protect_from_forgery with: :null_session
    before_filter :ensure_json

    protected

    def authorize!
      raise ApiController::Forbidden unless ApiKey.where(access_token: access_token).exists?
    end

    def access_token
      params[:access_token]
    end

    private

    def ensure_json
      raise ApiController::UnsupportedMediaType unless ensure_json_format || ensure_json_content_type
    end

    def ensure_json_format
      params[:format].to_s == 'json'
    end

    def ensure_json_content_type
      request.headers['Content-Type'] =~ /application\/json/
    end
  end
end

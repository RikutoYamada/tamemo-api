class ApplicationController < ActionController::API
  include JsonWebToken

  def not_found
    render json: { error: 'not_found' }
  end

  def authorize_request
    token = request.cookies['token']
    begin
      decoded = jwt_decode(token)
      logger.debug(decoded)
      # @current_user = User.find()
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end
end

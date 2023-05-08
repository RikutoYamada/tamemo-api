class Api::V1::SessionsController < ApplicationController
  include ActionController::Cookies
  def create
    user = User.find_by(email: params[:email])&.authenticate(params[:password])

    token = jwt_encode(user.email)

    cookies[:token] = {
      value: token,
      httponly: true
    }

    render json: user, status: :created
  end

  def destroy
    cookies.delete :token

    render status: :ok
  end
end

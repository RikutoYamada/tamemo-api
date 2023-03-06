class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])&.authenticate(params[:password])

    payload = {
      iss: 'example_app',
      sub: user.id,
      exp: (DateTime.current + 14.days).to_i
    }

    rsa_private = OpenSSL::PKey::RSA.new(File.read(Rails.root.join('auth/service.key')))

    token = JWT.encode(payload, rsa_private, 'RS256')

    cookies[:token] = token

    render status: :created
  end
end

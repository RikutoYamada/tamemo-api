require 'jwt'
module JsonWebToken
  extend ActiveSupport::Concern

  SECRET_KEY = OpenSSL::PKey::RSA.new(File.read(Rails.root.join('auth/service.key')))

  def jwt_encode(email)
    payload = {
      iss: 'example_app',
      sub: email,
      exp: (DateTime.current + 14.days).to_i
    }
    JWT.encode(payload, SECRET_KEY, 'RS256')
  end

  def jwt_decode(token)
    decoded = JWT.decode(token, SECRET_KEY, true, { algorithm: 'RS256' })
  end
end

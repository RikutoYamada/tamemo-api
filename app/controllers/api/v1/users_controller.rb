class Api::V1::UsersController < ApplicationController
  include ActionController::Cookies
  before_action :authorize_request, except: [:create]
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.create(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    token = jwt_encode(params[:email])

    cookies[:token] = {
      value: token,
      httponly: true
    }

    render json: @user, status: :created
  end
end

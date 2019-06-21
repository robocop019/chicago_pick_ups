class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.json.jbuilder'
  end

  def create
    @user = User.new {
                        first_name: params[:first_name],
                        last_name: params[:last_name],
                        email: params[:email],
                        password: params[:password],
                        password_confirmation: params[:password_confirmation],
                        phone_number: params[:phone_number],
                        bio: params[:bio],
                        date_of_birth: params[:date_of_birth],
                        location: params[:location],
                        avatar_url: params[:avatar_url]
                        }

    if @user.save
      render 'show.json.jbuilder'
    else
      render json: {message: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @user = User.find(params[:id])

    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email
    @user.password = params[:password] || @user.password
    @user.password_confirmation = params[:password_confirmation] || @user.password_confirmation
    @user.phone_number = params[:phone_number] || @user.phone_number
    @user.bio = parmas[:bio] || @user.bio
    @user.location || @user.location

    if @user.save
      render 'show.json.jbuiler'
    else
      render json: {message: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {message: 'The user has been successfully destroyed.'}
  end
end

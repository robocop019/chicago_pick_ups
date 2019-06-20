class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.json.jbuilder'
  end

  def new
    
  end

  def create
    
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jbuilder'
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {message: 'The user has been successfully destroyed.'}
  end
end

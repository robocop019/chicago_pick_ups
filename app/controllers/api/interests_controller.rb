class Api::InterestsController < ApplicationController
  # before_action :authenticate_user

  def index
    @interests = Interest.all
    render 'index.json.jbuilder'
  end

  def create
    @interest = Interest.new(
                              user_id: params[:user_id],
                              game_id: params[:game_id],
                              status: params[:status]
                            )

    if @interest.save
      render 'show.json.jbuilder'
    else
      render json: {message: @interest.errors.full_messages}, as: :unprocessable_entity
    end
  end

  def destroy
    @interest = Interest.find(params[:id])
    @interest.destroy
    render json: {message: 'The interest was deleted.'}
  end
end


class Api::InterestsController < ApplicationController
  before_action :authenticate_user, only: [:create, :destroy]

  def index

    @interests = Interest.all

    user_id = params[:user_id]
    game_id = params[:game_id]

    @interests = Interest.where("user_id = ?", "#{user_id}").order(status: :desc) if user_id

    @interests = Interest.where("game_id = ?", "#{game_id}").order(status: :desc) if game_id


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
      render json: {errors: @interest.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @interest = Interest.find(params[:id])
    @interest.destroy
    render json: {message: 'The interest was deleted.'}
  end
end


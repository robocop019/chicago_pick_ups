class Api::FriendshipsController < ApplicationController
  # before_action :authenticate_user

  def index

    @friendships = Friendship.all

    user_id = params[:user_id]

    @friendships = Friendship.where("friender_id = ?", "#{user_id}") if user_id

    render 'index.json.jbuilder'
  end

  def create
    @friendship = Friendship.new(
                                  friender_id: params[:friender_id],
                                  friendee_id: params[:friendee_id]
                                )

    if @friendship.save
      render 'show.json.jbuilder'
    else
      render json: {message: @friendship.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    render json: {message: 'A long time ago, we used to be friends...'}
  end
end

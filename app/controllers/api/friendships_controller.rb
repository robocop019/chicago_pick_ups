class Api::FriendshipsController < ApplicationController
  # before_action :authenticate_user

  def index

    @friendships = Friendship.all

    friender_id = params[:friender_id]
    friendee_id = params[:friendee_id]

    @friendships = Friendship.where("friender_id = ?", "#{friender_id}") if friender_id
    @friendships = Friendship.where("friendee_id = ?", "#{friendee_id}") if friendee_id

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
      render json: {errors: @friendship.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    render json: {message: 'A long time ago, we used to be friends...'}
  end
end

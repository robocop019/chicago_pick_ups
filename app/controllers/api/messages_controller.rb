class Api::MessagesController < ApplicationController
  # before_action :authenticate_user

  def index
    @messages = Message.all
    render 'index.json.jbuilder'
  end

  def create
    @message = Message.new(
                            sender_id: params[:sender_id],
                            recipient_id: params[:recipient_id],
                            content: params[:content]
                          )

    if @message.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @message.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @message = Message.find(params[:id])
    render 'show.json.jbuilder'
  end

  def destroy
    @message = Message.find(params[:id])
    @message.hidden = true

    if @message.save
      render json: {message: 'The message has been deleted.'}
    else
      render json: {message: @message.errors.full_messages}, status: :unprocessable_entity
    end
  end
end

class Api::MessagesController < ApplicationController
  # before_action :authenticate_user

  def index
    @messages = Message.all

    sender_id = params[:sender_id]
    
    recipient_id = params[:recipient_id]

    @messages = Message.where("sender_id = ?", "#{sender_id}") if sender_id
    
    @messages = Message.where("recipient_id = ? AND hidden = ?", "#{recipient_id}", "#{false}") if recipient_id

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

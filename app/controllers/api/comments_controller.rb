class Api::CommentsController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]

  def index

    commentable_id = params[:commentable_id]
    commentable_type = params[:commentable_type]

    if commentable_type && commentable_id
      @comments = Comment.where("hidden = ? AND commentable_type = ? AND commentable_id = ?", "#{false}", "#{commentable_type}", "#{commentable_id}")
      render 'index.json.jbuilder'
    else
      render json: {message: 'You messed up!'}, status: :unprocessable_entity 
    end
  end

  def create
    @comment = Comment.new(
                            user_id: params[:user_id],
                            commentable_id: params[:commentable_id],
                            commentable_type: params[:commentable_type],
                            content: params[:content],
                            rating: params[:rating]
                          )
    if @comment.save
      render 'show.json.jbuilder'
    else
      render json: {message: @comment.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @comment = Comment.find(params[:id])

    @comment.content = params[:content] || @comment.content
    @comment.rating = params[:rating] || @comment.rating

    if @comment.save
      render 'show.json.jbuilder'
    else
      render json: {message: @comment.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])

    @comment.hidden = true

    if @comment.save
      render json: {message: 'The comment was deleted.'}
    else
      render json: {message: @comment.errors.full_messages}, status: :unprocessable_entity
    end    
  end
end

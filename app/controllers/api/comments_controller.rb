class Api::CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render 'index.json.jbuilder'
  end

  def create
    @comment = Comment.new {
                            user_id: params[:user_id],
                            commentable_id: params[:commentable_id],
                            commentable_type: parms[:commentable_type],
                            content: parmas[:content],
                            rating: params[:rating]
                           }
    if @comment.save
      render 'show.json.jbuilder'
    else
      render json: {message: @comment.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    
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

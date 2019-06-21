class Api::GamesController < ApplicationController
  def index
    @games = Game.all
    render 'index.json.jbuilder'
  end

  def new
    
  end

  def create
    @game = Game.new {
                      title: params[:title],
                      description: params[:description],
                      park_id: params[:park_id],
                      start_time: params[:start_time],
                      organizer_id: params[:organizer_id],
                      sport: params[:sport],
                      category: params[:category],
                      min_participants: params[:min_participants],
                      max_participants: params[:max_participants],
                      max_age: params[:max_age]
                     }

    if @game.save
      render 'show.json.jbuilder'
    else
      render json: {message: @game.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @game = Game.find(params[:id])
    render 'show.json.jbuilder'
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    render json: {message: 'The game has been deleted.'}
  end
end

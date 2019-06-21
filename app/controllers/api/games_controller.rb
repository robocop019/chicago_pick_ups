class Api::GamesController < ApplicationController
  before_action :authenticate_user, only: [:create]
  before_action :authenticate_admin, only: [:update, :destroy]

  def index
    @games = Game.all

    sport = params[:sport]
    category = params[:category]
    park_name = params[:park_name]

    @games = Game.where("sport = ?", "#{sport}") if sport

    @games = Game.where("category = ?", "#{category}") if category

    if park_name
      park = Park.where("name iLIKE ?", "#{park_name}")
      @games = Game.where("park_id = ?", "#{park.api_ref}")
    end

    render 'index.json.jbuilder'
  end

  def create
    @game = Game.new(
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
                    )

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

  def update

    # admin only

    @game = Game.find(params[:id])

    @game.title = params[:title] || @game.title
    @game.description = params[:description] || @game.description
    @game.park_id = params[:park_id] || @game.park_id
    @game.start_time = params[:start_time] || @game.start_time
    @game.sport = params[:sport] || @game.sport
    @game.category = params[:category] || @game.category
    @game.min_participants = params[:min_participants] || @game.min_participants
    @game.max_participants = params[:max_participants] || @game.max_participants
    @game.max_age = params[:max_age] || @game.max_age

    if @game.save
      render 'show.json.jbuilder'
    else
      render json: {message: @game.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy

    # admin only

    @game = Game.find(params[:id])
    @game.destroy
    render json: {message: 'The game has been deleted.'}
  end
end

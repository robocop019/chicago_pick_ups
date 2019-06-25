class Api::ParksController < ApplicationController
  def index
    @parks = Park.all.order(:name)
    render 'index.json.jbuilder'
  end

  def show
    @park = Park.find(params[:id])
    render 'show.json.jbuilder'
  end
end

class Api::SpidersController < ApplicationController
  def index
    @spiders = Spider.all
    render "index.json.jb"
  end

  def create
    @spider = Spider.new(
      spiderman: params[:spiderman],
      year: params[:year],
      maryjane: params[:maryjane],
      villian: params[:villian],
    )
    @spider.save
    render "show.json.jb"
  end

  def show
    @spiders = Spider.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @spiders = Spider.find_by(id: params[:id])
    @spiders.spiderman = params[:spiderman]
    @spiders.year = params[:year]
    @spiders.maryjane = params[:maryjane]
    @spiders.villian = params[:villian]
    @spiders.save
    render "show.json.jb"
  end

  def destroy
    @spiders = Spider.find_by(id: params[:id])
    @spiders.destroy
    render json: { message: "Spiderman final web removed" }
  end
end

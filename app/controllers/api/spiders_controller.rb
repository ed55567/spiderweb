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
    @spider = Spider.find_by(id: params[:id])
    @spider.spiderman = params[:spiderman] || @spider.spiderman
    @spider.year = params[:year] || @spider.year
    @spider.maryjane = params[:maryjane] || @spider.maryjane
    @spider.villian = params[:villian] || @spider.villian
    @spider.save
    render "show.json.jb"
  end
end

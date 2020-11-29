class Api::SpidersController < ApplicationController
  def index
    # p Rails.application.credentials.news_api
    #@spiders = HTTP.get("http://newsapi.org/v2/everything?q=apple&from=2020-11-24&to=2020-11-24&sortBy=popularity&apiKey=#{Rails.application.credentials.news_api[:api_key]}").parse
    @spiders = Spider.all
    render "index.json.jb"
    
  end

  def show 
    @spider = Spider.find_by(id: params[:id])
    render 'show.html.erb'

  def new
    render "new.html.erb"
  end

  def create
    @spider = Spider.new(
      spiderman: params[:spiderman],
      year: params[:year],
      maryjane: params[:maryjane],
      villian: params[:villian],
    )

    if @spider.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }
    end
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
    @spiders.director = params[:director]
    @spiders.description = params[:description]
    @spiders.save
    render "show.json.jb"
  end

  def destroy
    @spiders = Spider.find_by(id: params[:id])
    @spiders.destroy
    render json: { message: "Spiderman final web removed" }
  end
end

class SpidersController < ApplicationController
  def index
    @spiders = Spider.all
    render "index.html.erb"
  end

  def show
    @spider = Spider.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @spider = Spider.new(
      peter_parker: params[:peter_parker],
      number_of_villians: params[:number_of_villians],
      name: params[:name],
    )
    @spider.save
    render "show.html.erb"
  end
end

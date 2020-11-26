class SpidersController < ApplicationController
  def index
    @spiders = Spider.all
    render "index.html.erb"
  end
end

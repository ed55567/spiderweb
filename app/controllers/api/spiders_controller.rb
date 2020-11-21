class Api::SpidersController < ApplicationController
  def index
    @spiders = Spider.all
    render "index.json.jb"
  end
end

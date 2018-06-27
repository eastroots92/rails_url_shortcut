class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
  end

  def create
    Link.create(
      short: params[:short],
      long: params[:long]
    )

    redirect_to '/links'
  end

  def destroy
  end

  def goto
    shortUrl = params[:short]
    longUrl = Link.find_by(short: shortUrl)

    redirect_to longUrl.long
    
  end
end

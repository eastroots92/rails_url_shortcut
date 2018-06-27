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
    @link = Link.find(params[:id])

    @link.destroy

    redirect_to "/"
  end

  def goto
    shortUrl = params[:short]
    longUrl = Link.find_by(short: shortUrl)

    if longUrl.nil?
      redirect_to "/"
    else
      redirect_to longUrl.long
    end
    
  end
end

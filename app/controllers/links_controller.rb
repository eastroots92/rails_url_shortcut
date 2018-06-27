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
end

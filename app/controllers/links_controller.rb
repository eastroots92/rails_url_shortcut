class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
  end

  def create
  end

  def destroy
  end
end

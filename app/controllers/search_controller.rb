class SearchController < ApplicationController


  def index
    @search = Photos.all
    if params[:search]
      @search = Photos.search(params[:search]).order("created_at DESC")
    else
      @search = Search.all.order("created_at DESC")
    end
  end

end

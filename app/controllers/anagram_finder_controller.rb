class AnagramFinderController < ApplicationController
  def index
  end

  def upload
    @time = FileHandler.new params[:file]
    render :index
  end

  def find
    @words = AnagramSearch.new.find_annagrams(params[:term])
    render :index
  end
end

class SongsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    
  end

  private

  def set_post
    @song = Song.find(params[:id])
  end
end

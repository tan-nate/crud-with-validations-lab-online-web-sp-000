class SongsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  private

  def set_post
    @song = Song.find(params[:id])
  end

  def post_params
    params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
  end
end

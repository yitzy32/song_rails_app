class Api::SongsController < ApplicationController
  def index
    @songs = Song.all
    render "index.json.jb"
  end

  def show
    id = params["id"]
    @song = Song.find_by(id: id)
    render "show.json.jb"
  end

  def create
    @song = Song.new(
      id: params["id"],
      title: params["title"],
      artist: params["artist"],
      album: params["album"],
      genre: params["genre"],
    )
    render "show.json.jb"
  end

  def update
    @song = Song.find_by(id: 88)
    @song.title = params[:title]
    @song.artist = params[:artist]
    @song.album = params[:album]
    @song.genre = params[:genre]

    render "show.json.jb"
  end
end

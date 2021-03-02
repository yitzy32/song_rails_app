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
end

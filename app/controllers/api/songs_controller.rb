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
end

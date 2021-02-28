class Api::SongsController < ApplicationController
  def index
    render "index.json.jb"
  end
end

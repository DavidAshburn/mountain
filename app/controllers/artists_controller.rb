class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[ show ]

  # GET /artists or /artists.json
  def index
    @artists = Artist.all
  end

  # GET /artists/1 or /artists/1.json
  def show
    @titles = ""
    @artist.artpieces.each do |piece|
      @titles += (piece.title + ',')
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artist_params
      params.fetch(:artist, {})
    end
end

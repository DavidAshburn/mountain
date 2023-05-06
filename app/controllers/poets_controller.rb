class PoetsController < ApplicationController
  before_action :set_poet, only: %i[ show ]

  # GET /poets or /poets.json
  def index
    @poets = Poet.all
  end

  # GET /poets/1 or /poets/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poet
      @poet = Poet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poet_params
      params.require(:poet).permit(:first, :last, :bio, :nameplate)
    end
end

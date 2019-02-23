class RankingsController < ApplicationController
  before_action :set_ranking, only: [:update, :destroy]
  def stats

  end

  def update
    if !@ranking.update(ranking_params)
      #Handles exceptions
    end
    redirect_to stats_path
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ranking
      @ranking = Ranking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ranking_params
      params.require(:ranking).permit(:name, :rank)
    end
end

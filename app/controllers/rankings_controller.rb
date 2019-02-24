class RankingsController < ApplicationController
  before_action :set_ranking, only: [:update, :destroy, :updateRead]

  def stats
    @rating = {1=>"Very boring",  2=>"Okay", 3=>"Good read",4=>"Interesting",5=>"Super Interesting"}
    @list = Ranking.order(rank: :desc)
  end

  def updateRead
    if (@ranking.read) 
      @ranking.update_attribute(:read,false)
    else
      @ranking.update_attribute(:read,true)
    end
    redirect_to stats_path
  end

   def updateRank 
    @rank = params[:set][:rank]
    @name = params[:set][:name]
    @ranking = Ranking.where(name: @name).first
    @ranking.update_attribute(:rank, @rank)
    redirect_to stats_path
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
      @ranking = Ranking.where(name: params[:name]).first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ranking_params
      params.require(:ranking).permit(:rank)
    end
end

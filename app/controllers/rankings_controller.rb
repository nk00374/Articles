class RankingsController < ApplicationController
  before_action :set_ranking, only: [:update, :destroy]
  def stats

  end


  # POST /rankings
  # POST /rankings.json
  def create
    @ranking = Ranking.new(ranking_params)

    respond_to do |format|
      if @ranking.save
        format.html { redirect_to @ranking, notice: 'Ranking was successfully created.' }
        format.json { render :show, status: :created, location: @ranking }
      else
        format.html { render :new }
        format.json { render json: @ranking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rankings/1
  # PATCH/PUT /rankings/1.json
  def update
    respond_to do |format|
      if @ranking.update(ranking_params)
        format.html { redirect_to @ranking, notice: 'Ranking was successfully updated.' }
        format.json { render :show, status: :ok, location: @ranking }
      else
        format.html { render :edit }
        format.json { render json: @ranking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rankings/1
  # DELETE /rankings/1.json
  def destroy
    @ranking.destroy
    respond_to do |format|
      format.html { redirect_to rankings_url, notice: 'Ranking was successfully destroyed.' }
      format.json { head :no_content }
    end
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

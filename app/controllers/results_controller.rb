class ResultsController < ApplicationController

  def index
  end

  def new
    @result = Result.new
  end

  def create
    result = Result.new(result_params)
    result.user = current_user
    if result.save
      # do some stuff
    else
      redirect_to games_path
    end
  end


  private

    def result_params
      params.require(:result).permit(:content, :game_id)
    end
end

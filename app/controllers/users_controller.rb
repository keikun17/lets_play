class UsersController < ApplicationController

  def update

  end

  def update_games
    @game = Game.find(params[:game_id])
    current_user.games << @game

    respond_to do |format|
      format.json { render json: @game }
    end
  end

end

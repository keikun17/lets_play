class UsersController < ApplicationController

  def update

  end

  def update_games
    @game = Game.find(params[:game_id])

    respond_to do |format|
      if !current_user.games.include?(@game)
        current_user.games << @game
        format.json { render json: @game }
      end
    end
  end

end

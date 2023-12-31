class GamesController < ApplicationController

  def new
    @game = Game.new
    @game.players.build
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to edit_game_path(@game)
    else
      render 'new'
    end
  end

  def edit
    @game = Game.find(params[:id])
    @game.players.build if @game.players.empty?
  end


  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      redirect_to edit_game_path(@game), notice: 'La partie a été mise à jour avec succès.'
    else
      @game = Game.find(params[:id])
      render 'edit'
    end
  end


  private

  def game_params
    params.require(:game).permit(:name, players_attributes: [:id, :_destroy, :name, :one, :two, :three, :four, :five, :six, :triple, :quadriple, :full, :small, :long, :chance, :yams, :_destroy])
  end

end

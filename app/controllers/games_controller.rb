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
      if params[:game][:check_fields] && all_fields_filled?(@game)
        # Si tous les champs sont remplis, rediriger vers la page des scores
        redirect_to scores_game_path(@game)
        return  # Ajoutez return pour s'assurer qu'aucun autre rendu ou redirection ne se produira après ceci
      else
        # Si les champs ne sont pas tous remplis, rediriger vers la même page d'édition avec un message
        redirect_to edit_game_path(@game)
        return
      end
    else
      # Si la mise à jour échoue, rendre la vue 'edit' avec les objets actuels
      render 'edit'
      return
    end
  end

  def scores
    @game = Game.find(params[:id])
    # Vous pouvez ici charger d'autres données nécessaires pour afficher les scores
  end

  private

  def game_params
    params.require(:game).permit(:name, players_attributes: [:id, :_destroy, :name, :one, :two, :three, :four, :five, :six, :triple, :quadriple, :full, :small, :long, :chance, :yams, :_destroy])
  end

  def all_fields_filled?(game)
    game.players.all? do |player|
      # Assurez-vous que tous les champs requis sont non nils et non vides
      [player.one, player.two, player.three, player.four, player.five, player.six, player.triple, player.quadriple, player.full, player.small, player.long, player.chance, player.yams].all?
    end
  end

end

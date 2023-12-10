class AddQuadripleToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :quadriple, :integer
  end
end

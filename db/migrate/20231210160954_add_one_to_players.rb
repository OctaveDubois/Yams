class AddOneToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :one, :integer
  end
end

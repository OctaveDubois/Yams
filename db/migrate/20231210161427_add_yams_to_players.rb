class AddYamsToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :yams, :integer
  end
end

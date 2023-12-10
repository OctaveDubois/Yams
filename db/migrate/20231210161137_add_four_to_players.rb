class AddFourToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :four, :integer
  end
end

class AddSmallToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :small, :integer
  end
end

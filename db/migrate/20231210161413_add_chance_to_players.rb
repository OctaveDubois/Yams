class AddChanceToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :chance, :integer
  end
end

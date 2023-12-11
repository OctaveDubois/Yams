class AddFullToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :full, :integer
  end
end

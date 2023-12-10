class AddFiveToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :five, :integer
  end
end

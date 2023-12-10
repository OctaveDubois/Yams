class AddSixToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :six, :integer
  end
end

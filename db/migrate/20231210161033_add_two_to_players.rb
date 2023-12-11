class AddTwoToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :two, :integer
  end
end

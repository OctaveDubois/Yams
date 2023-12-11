class AddLongToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :long, :integer
  end
end

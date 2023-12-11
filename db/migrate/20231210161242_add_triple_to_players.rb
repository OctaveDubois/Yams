class AddTripleToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :triple, :integer
  end
end

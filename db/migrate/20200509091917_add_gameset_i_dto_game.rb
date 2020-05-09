class AddGamesetIDtoGame < ActiveRecord::Migration[6.0]
  def change
    remove_column :gamesets, :game_id
    add_reference :games, :gameset, null: false, foreign_key: true
  end
end

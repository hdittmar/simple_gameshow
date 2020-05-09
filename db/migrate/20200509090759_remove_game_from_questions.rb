class RemoveGameFromQuestions < ActiveRecord::Migration[6.0]
  def change
    remove_column :questions, :games_id
  end
end

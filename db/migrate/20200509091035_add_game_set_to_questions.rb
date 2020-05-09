class AddGameSetToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_reference :questions, :gameset, null: false, foreign_key: true
  end
end

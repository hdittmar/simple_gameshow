class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :games, null: false, foreign_key: true
      t.string :title
      t.string :correct_option
      t.string :incorrect_option_1
      t.string :incorrect_option_2
      t.string :incorrect_option_3
      t.integer :correct_guess
      t.string :question_type
      t.boolean :done

      t.timestamps
    end
  end
end

class CreateGamesets < ActiveRecord::Migration[6.0]
  def change
    create_table :gamesets do |t|
      t.string :title
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end

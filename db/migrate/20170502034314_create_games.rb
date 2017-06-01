class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.timestamps
      t.string :name
      t.integer :min_players
      t.integer :max_players
    end
  end
end

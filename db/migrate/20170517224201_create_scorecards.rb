class CreateScorecards < ActiveRecord::Migration[5.0]
  def change
    create_table :scorecards do |t|
      t.timestamps
      t.boolean :starred
      t.integer :game_id
    end
  end
end

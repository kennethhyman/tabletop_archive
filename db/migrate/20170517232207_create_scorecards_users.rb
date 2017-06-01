class CreateScorecardsUsers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :scorecards, :users do |t|
      t.index [:scorecard_id, :user_id]
      t.index [:user_id, :scorecard_id]
    end
  end
end

class AddTitleToScorecard < ActiveRecord::Migration[5.0]
  def change
		add_column :scorecards, :title, :string
  end
end

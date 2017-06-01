class CreateCells < ActiveRecord::Migration[5.0]
  def change
    create_table :cells do |t|
      t.timestamps
      t.integer :score
      t.integer :category_id
      t.integer :scorecard_id
      t.integer :user_id
    end
  end
end

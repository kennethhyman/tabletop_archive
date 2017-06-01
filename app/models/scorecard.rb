class Scorecard < ApplicationRecord
  has_many :categories, through: :game
  has_many :cells
  has_and_belongs_to_many :users
  belongs_to :games
end

class Cell < ApplicationRecord
  belongs_to :users
  belongs_to :categories
  belongs_to :scorecards
end

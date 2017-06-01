class User < ApplicationRecord
  has_many :cells
  has_and_belongs_to_many :scorecards
  has_secure_password 
  

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :first_name, presence: true, length: {maximum: 25}
  validates :last_name, presence: true, length: {maximum: 25}
  validates :email, presence: true, length: {maximum: 256}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: {maximum: 100, minimum: 5}

  before_save {email.downcase!}

end

# frozen_string_literal: true

class User < ApplicationRecord
  # validations
  validates :user, presence: true, length: { minimum: 3 }

  REGEX_VALID = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze

  validates :email, presence: true, length: { maximum: 255 }, 
  format: { with: REGEX_VALID }, uniqueness: { case_sensitive: true }

  # associations
  has_many :posts
  has_many :comments
end

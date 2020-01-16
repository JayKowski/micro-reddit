# frozen_string_literal: true

class User < ApplicationRecord
  # validations
  validates :user, presence: true, length: { minimum: 3 }

  REG = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze

  validates :email, presence: true, length: { maximum: 99 }, format: { with: REG }, uniqueness: { case_sensitive: true }

  # associations
  has_many :posts
  has_many :comments
end

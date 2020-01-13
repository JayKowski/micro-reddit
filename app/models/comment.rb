class Comment < ApplicationRecord
    #validations
    validates :comment, presence: true 
    #associations
    belongs_to :post
    belongs_to :user
  
end

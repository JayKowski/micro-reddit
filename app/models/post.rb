class Post < ApplicationRecord
    #validations
    validates :title, presence: true
    validates :body, presence: true 

    #associations
    belongs_to :user
    has_many :comments

end

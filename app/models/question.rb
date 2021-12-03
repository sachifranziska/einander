class Question < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :category_id
    validates :content
  end 
end

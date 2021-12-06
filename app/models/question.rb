class Question < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  with_options presence: true do
    validates :title
    validates :content
  end 

  validates :category_id, numericality: { other_than: 1, message: "can't be blank" }
end

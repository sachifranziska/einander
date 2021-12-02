class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :country
  belongs_to :experience
  belongs_to :gender
  belongs_to :stay_length
  
  validates :country_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :experience_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :gender_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :stay_length_id, numericality: { other_than: 1, message: "can't be blank"}
  
end

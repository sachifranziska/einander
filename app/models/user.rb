class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :questions

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :country
  belongs_to :experience
  belongs_to :gender
  belongs_to :stay_length

  with_options presence: true, numericality: { other_than: 1, message: "can't be blank"} do
    validates :country_id
    validates :experience_id
    validates :gender_id
    validates :stay_length_id
  end
  
  with_options presence: true do
    validates :nickname
    validates :last_name
    validates :first_name
    validates :birth_date
  end 
end

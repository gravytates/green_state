class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :co2_estimates

  scope :alphabetical, -> { order(name: :asc) }
  scope :state, -> { order(name: :asc) }      
end

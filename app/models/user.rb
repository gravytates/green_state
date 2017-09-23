class User < ApplicationRecord
  validates :name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :co2_estimates

  scope :alphabetical, -> { order(name: :asc) }
  scope :state, -> { order(name: :asc) }
end

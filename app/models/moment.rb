class Moment < ApplicationRecord
  belongs_to :user
  has_many :moment_maps
  has_many :posts, through: :moment_maps
end

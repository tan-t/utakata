class Moment < ApplicationRecord
  belongs_to :user
  has_many :post, through: :moment_maps
end

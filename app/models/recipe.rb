class Recipe < ActiveRecord::Base
  belongs_to :brew_type
  belongs_to :standard
  belongs_to :user

  has_many :batches
  has_many :reviews
end

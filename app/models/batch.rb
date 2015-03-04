class Batch < ActiveRecord::Base
  belongs_to :standard
  belongs_to :recipe

  has_many :reviews
end

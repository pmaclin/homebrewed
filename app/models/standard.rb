class Standard < ActiveRecord::Base
  has_many :batches
  has_many :recipes
end

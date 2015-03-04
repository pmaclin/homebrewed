class BrewType < ActiveRecord::Base
  has_many :recipes
end

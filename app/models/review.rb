class Review < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :batch
  belongs_to :user
end

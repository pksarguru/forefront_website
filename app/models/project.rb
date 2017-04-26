class Project < ApplicationRecord
  has_many :images, as: :imageable
end

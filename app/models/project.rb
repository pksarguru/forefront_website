class Project < ApplicationRecord
  has_many :images, as: :imageable
  has_many :videos, as: :videoable

end

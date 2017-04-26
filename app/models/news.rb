class News < ApplicationRecord
  belongs_to :author, as: :user
  has_many   :images, as: :imageable
end

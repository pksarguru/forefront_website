class TeamMember < ApplicationRecord
  has_many :images, as: :imageable
end

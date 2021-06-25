class Review < ApplicationRecord
    belongs_to :user
    belongs_to :camera
    belongs_to :lenz
end

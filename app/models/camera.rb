class Camera < ApplicationRecord
    has_many :reviews, dependent: :destroy
end

class Lenz < ApplicationRecord
    has_many :reviewws, dependent: :destroy
end

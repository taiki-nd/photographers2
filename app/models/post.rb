class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    belongs_to :slectboxes
    
    
    def self.search(search)
        if search != ""
            Post.where(['camera_maker LIKE(?) OR camera LIKE(?) OR lens_maker LIKE(?) OR lens LIKE(?) OR image_cat LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
        else
            Post.all
        end
    end
    
end

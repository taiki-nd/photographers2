class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    
    def self.search(search)
        if search != ""
            Post.where('text LIKE(?)' "%#{serch}%")
        else
            Post.all
        end
    end
    
end

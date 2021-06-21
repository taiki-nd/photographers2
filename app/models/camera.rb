class Camera < ApplicationRecord
    
    def index
        @cameras = Camera.all
    end
    
end

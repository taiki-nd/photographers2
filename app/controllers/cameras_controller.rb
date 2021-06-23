class CamerasController < ApplicationController
    
    def index
        @cameras = Camera.all
    end
    
    def new
        @post = Camera.new
    end
    
end

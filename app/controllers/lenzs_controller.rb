class LenzsController < ApplicationController
    
    def index
        @lenzs = Lenz.all
    end
    
    
end

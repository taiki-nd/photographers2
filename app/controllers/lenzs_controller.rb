class LenzsController < ApplicationController
    
    def index
        @lenzs = Lenz.all
    end
    
    def new
        @lenz = Lenz.new
    end
end

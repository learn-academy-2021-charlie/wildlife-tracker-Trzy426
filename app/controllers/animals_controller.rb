class AnimalsController < ApplicationController
    def index
        iloathethis = Animal.all
        render json: iloathethis
    end
end

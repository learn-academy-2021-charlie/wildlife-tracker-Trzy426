class AnimalsController < ApplicationController
    def index
        iloathethis = Animal.all
        render json: iloathethis
    end

    def update
        @animal = Animal.find(params[:id])
        @animal.update(animal_params)
        render json: @animal
    end

    def destroy
        @animal = Animal.find(params[:id])
        @animal.destroy
    end

    def create
        @animal = Animal.create(animal_params)
    end#this also give the same problem

    private
    def animal_params
        params.require(:animal).permit(:common_name, :latin_name, :kingdom)
    end 

    #could not get this to work in postman but it looks correct. 
    #undefined method `permit' for "{[common_name:test]}":String
    #**localhost:3000/animals/1/?animal={[common_name:test]}
end

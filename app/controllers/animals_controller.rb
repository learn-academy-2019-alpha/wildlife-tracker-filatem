class AnimalsController < ApplicationController
    def index
        @animals = Animal.all 
    end 
    
    def new 
        @animal = Animal.new
    end
    
    def create
        @animal = Animal.new(add_params) 
        if @animal.valid?
            @animal.save
            redirect_to animals_path
        else
            render action: :new
        end
    end
    
    def show 
        @animal = Animal.find(params[:id])
    end
    
    def edit 
        @animal = Animal.find(params[:id])
    end 
    
    def update
        @animal = Animal.find(params[:id])
        
        if(@animal.update(add_params))
            redirect_to animals_path
        else 
            render 'new'
        end
    end
    
    def destroy
        @animal = Animal.find(params[:id])
        @animal.destroy
        
        redirect_to animals_path
    end
    
    private
    
    def add_params
        params.require(:animal).permit(:name, :latin_name, :kingdom)
    end
end

class SightingsController < ApplicationController
    def index
        @sightings = Sighting.all 
    end 
    
    def new 
        animal = Animal.find(params[:animal_id])
        @sighting = animal.sightings.new
    end
    
    def create
        @sighting = Sighting.new(sight_params)
        if  @sighting.save
            redirect_to animal_path(@sighting.animal)
        else
            render action: :new
        end
    end  
    
    def edit 
        @sighting = Sighting.find(params[:animal_id])
    end 
    
    def update
        @sighting = Sighting.find(params[:animal_id])
        
        if(@sighting.update(sight_params))
            redirect_to animal_path(@sighting.animal)
        end
    end
    
  private
    
    def sight_params
        params.require(:sighting).permit(:date, :time, :latitude, :longitude, :region, :animal_id)
    end
end

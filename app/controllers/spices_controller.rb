class SpicesController < ApplicationController

    def index
        spices = Spice.all
        render json: spices
      end
      
  
    def create
      spice = Spice.create(spice_params)
      render json: spice, status: :created
    end
  
   # app/controllers/spices_controller.rb
def update
    spice = Spice.find(params[:id])
    if spice.update(spice_params)
      render json: spice, status: :ok
    else
      render json: { error: 'Failed to update the spice' }, status: :unprocessable_entity
    end
  end
  
      
  
    def destroy
      spice = Spice.find_by(id: params[:id])
      spice.destroy
      head :no_content
    end
  
    private
    
    def spice_params
      params.permit(:title, :image, :description, :notes, :rating)
    end
  
  end
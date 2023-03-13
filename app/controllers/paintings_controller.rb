class PaintingsController < ApplicationController
    def index
        @paintings=Painting.all
    end
    def show 
          @painting =Painting.find(params[:id])
    end

    def new
        @painting=Painting.new
    end
    def create
    @painting= Painting.create(painting_params)
    redirect_to @painting
    end

     def edit
        @painting =Painting.find(params[:id])
    end
    def update
        @painting =Painting.find(params[:id])
    @painting.update(painting_params)
    end
    def destroy
    redirect_to @painting
    @painting =Painting.find(params[:id])
    @painting.destroy
    redirect_to paintings_path
    end

    private
    def painting_params
    params.require(:painting).permit(:name, :price,:artist_id,:gallery_id)
    end
end

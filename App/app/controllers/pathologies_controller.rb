class PathologiesController < ApplicationController
    
    def index
        @pathologies = Pathologie.all
    end
    
    def new
        @pathologie = Pathologie.new
    end
    
    def show
        @pathologie = Pathologie.find(params[:id])
    end
    
    private
      def patho_params
        params.require(:pathologie).permit(:name)
      end
      
      public
      def create
        @pathologie = Pathologie.new(patho_params)
        if @pathologie.save
          redirect_to '/'
        else
          render 'new'
        end
      end

end


class BarbecuesController < ApplicationController
    
    #GET
    def index
        barbecues = Barbecue.all
        render json: barbecues
    end

    #GET
    def show
        barbecue = Barbecue.find(params[:id])
        render json: barbecue
    end

    #POST
    def create
        barbecue = Barbecue.new(barbecue_params)
        if barbecue.save
            render json: barbecue
        end
    end

    #DELETE
    # def destroy
    #     @barbecue.destroy
    # end

    private

    def barbecue_params
        params.require(:barbecue).permit(:name, :rating, :review)
    end

end

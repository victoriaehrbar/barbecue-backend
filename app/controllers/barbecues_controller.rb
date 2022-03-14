class BarbecuesController < ApplicationController
    def index
        barbecues = Barbecue.all
        render json: barbecues
    end

    def show
        barbecue = Barbecue.find(params[:id])
        render json: barbecue
    end

    def create
        barbecue = Barbecue.new(barbecue_params)
        if barbecue.save
            render json: barbecue
        end
    end

    private

    def barbecue_params
        params.require(:barbecue).permit(:name, :rating, :review)
    end

end

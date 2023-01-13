class ComplainsController < ApplicationController
    def index
        complain=Complain.all
        render json: complain
    end
    def destroy
        complain=Complain.find(params[:id])
        complain.destroy()
        head :no_content
    end
    def create
        complain=Complain.create(complain_params)
        render json: complain, status: :created
    end
    def show
        complain=Complain.find(params[:id])
        render json: complain
    end
    def update
        complain=Complain.find(params[:id])
        complain.update(complain_params)
        render json: complain
    end
    private
    def complain_params
        params.permit(:Name,:Phone,:HouseType,:HouseNo,:Email,:complain)
    end
end

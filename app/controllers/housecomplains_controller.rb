class HousecomplainsController < ApplicationController
    skip_before_action :authorized,only: [:create,:index,:delete,:update]
    def index
        complain=Housecomplain.all
        render json: complain
    end
    def create
        complain=Housecomplain.create(complain_params)
        render json: complain, status: :created
    end
    def show
        complain=Housecomplain.find(params[:id])
        render json: complain
    end
    def update
        complain=Housecomplain.find(params[:id])
        complain.update()
        render json: complain
    end
    def destroy
        complain=Housecomplain.find(params[:id])
        complain.destroy()
        head :no_content
    end
    private
    def complain_params
        params.permit(:Name,:Phone,:HouseType,:Email,:complain,:property_id)
        
    end
end

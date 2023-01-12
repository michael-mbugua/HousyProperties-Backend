class OwnersController < ApplicationController
    def create
        owner= Owner.create(owner_params)
        render json: owner, status: :created
    end
    def destroy
        owner=Owner.find(params[:id])
        owner.destroy()
        head :no_content
    end
    def update
        owner=Owner.find(params[:id])
        owner.update(owner_params)
        render json: owner
    end
    def index
        owner=Owner.all 
        render json: owner
    end
    private
    def owner_params
        params.permit(:Name,:Email,:Phone,:Password)
    end
end

class AdminsController < ApplicationController
    def index
        admin=Admin.all
        render json: admin
    end
    def create
        admin=Admin.create(admin_params)
        render json: admin, status: :created
    end
    def destroy
        admin=Admin.find(params[:id])
        admin.destroy()
        head :no_content
    end
    def update
        admin=Admin.find(params[:id])
        admin.update(admin_params)
        render json: admin
    end
    def show
        admin=Admin.find(params[:id])
        render json: admin
    end
    private
    def admin_params
        params.permit(:Name,:Phone,:Password,:Email)
    end
end

class AdminsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    skip_before_action :authorized,only: [:create]

    def index
        admin=Admin.all
        render json: admin
    end
    def create
        admin = Admin.create!(admin_params)
        if admin.valid?
            token= encode_token({admin_id: admin.id})
            render json: {admin: AdminSerializer.new(admin),jwt: token },status: :created
        else
            render json: {error: "Failed to create Admin"}, status: :unprocessable_entity
        end
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
        params.permit(:Name,:Phone,:password,:Email)
    end
end

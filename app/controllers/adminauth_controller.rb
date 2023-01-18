class AdminauthController < ApplicationController
    skip_before_action :authorized, only: [:create,:index]

    def create
        admin = Admin.find_by(name: admin_login_params[:name])
        if admin &.authenticate(admin_login_params[:password])
            token= encode_token({admin_id: admin.id})
            render json: {admin: adminSerializer.new(admin),jwt: token},status: :accepted
        else
            render json: { error: 'Invalid username or password' }, status: :unauthorized
        end
    end


    private
    def admin_login_params
        params.permit(:Name,:password)
    end
end

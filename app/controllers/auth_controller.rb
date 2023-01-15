class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create,:index]

    def create
        tenant = Tenant.find_by(name: tenant_login_params[:name])
        if tenant &.authenticate(tenant_login_params[:password])
            token= encode_token({tenant_id: tenant.id})
            render json: {tenant: TenantSerializer.new(tenant),jwt: token},status: :accepted
        else
            render json: { error: 'Invalid username or password' }, status: :unauthorized
        end
    end


    private
    def tenant_login_params
        params.permit(:name,:password)
    end
end

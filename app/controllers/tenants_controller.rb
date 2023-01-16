class TenantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


    skip_before_action :authorized,only: [:create,:index]

    def profile
      render json: current_user,serializer: TenantSerializer, status: :accepted
    end

    def index
        if params[:property_id]
          property=Property.find(params[:property_id])
          tenant=property.tenants 
        else
          tenant=Tenant.all
        end
        render json: tenant,include: :property
    end
    
    def show
      tenant = Tenant.find(params[:id])
      render json: tenant
    end
    
      def create
        tenant = Tenant.create!(tenant_params)
        if tenant.valid?
          token= encode_token({tenant_id: tenant.id})
          render json: {tenant: TenantSerializer.new(tenant),jwt: token },status: :created
        else
          render json: {error: "Failed to create tenant"}, status: :unprocessable_entity
        end
      end
      def update
        tenant=Tenant.find(params[:id])
        tenant.update(tenant_params)
        render json: tenant
      end

      def destroy
        tenant=Tenant.find(params[:id])
        tenant.destroy
        head :no_content
      end

      private
      def render_not_found_response
        render json: {error: "Tenant not Found"}, status: :not_found
      end
    
      def tenant_params
        params.permit(:name,:last_name, :phone_no,:email,:password,:property_id,:HouseType, :unit_type, :date_in,:rent_payable )
      end
end

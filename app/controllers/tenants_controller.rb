class TenantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        tenants = Tenant.all
        render json: tenants
      end
    
      def show
        tenant = Tenant.find(params[:id])
        render json: tenant
      end
    
      def create
        tenant = tenant.create(tenant_params)
        render json: tenant, status: :created
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
        params.permit(:name,:house_no, :phone_no, :unit_type, :date_in, )
      end

end

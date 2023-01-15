class PropertiesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    skip_before_action :authorized,only: [:index]
      def index
          properties = Property.all
          render json: properties
        end
      
        def show
          property = Property.find(params[:id])
          render json: property
        end
      
        def create
          property = Property.create(property_params)
          render json: property, status: :created
        end

        def destroy
          property=Property.find(params[:id])
          property.destroy
          head :no_content
        end
    

        private

        def render_not_found_response
          render json: {error: "Property not Found"}, status: :not_found
        end
      
        def property_params
          params.permit(:name,:property_type, :unit_type, :location,:image, :amount)
        end

end

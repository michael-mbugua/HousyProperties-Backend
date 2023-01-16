class ContactsController < ApplicationController
    skip_before_action :authorized, only: [:index,:create,:destroy]
    def index
        message=Contact.all
        render json: message
    end
    def create
        message=Contact.create(message_params)
        render json: message, status: :created
    end
    def update
        message=Contact.find(params[:id])
        message.update(message_params)
        render json: message
    end
    def destroy
        message=Contact.find(params[:id])
        message.destroy()
        head :no_content
    end
    private
    def message_params
        params.permit(:Name,:Email,:phone,:message)
    end
end

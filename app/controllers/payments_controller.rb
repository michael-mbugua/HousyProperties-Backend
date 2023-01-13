class PaymentsController < ApplicationController
    def create
        pay=Payment.create(pay_params)
        render json: pay, status: :created
    end
    def index
        pay=Payment.all
        render json: pay, status: :ok
    end
    def show
        pay=Payment.find(params[:id])
        render json: pay
    end
    private
    def pay_params
        params.permit(:Name,:amount,:property_id)
    end
end

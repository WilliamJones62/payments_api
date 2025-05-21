class PaymentsController < ApplicationController
    before_action :set_payment, only: [:show, :update, :destroy]

    def index
        render json: Payment.all
    end

    def create
        payment = Payment.new(payment_params)
        if payment.save
            render json: payment, status: :created
        else
            render json: payment.errors, status: :unprocessable_entity
        end
    end

    def show
        if @payment
            render json: @payment, status: :ok
        else
            render json: { error: 'Payment not found' }, status: :not_found
        end
    end

    def update
        if @payment.update(payment_params)
            render json: @payment, status: :ok
        else
            render json: @payment.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @payment.destroy
        render json: { notice: 'Payment deleted' }, status: :ok
    end

    private

    def set_payment
        @payment = Payment.find(params[:id])
    end

    def payment_params
        params.require(:payment).permit(:amount, :description)
    end

end

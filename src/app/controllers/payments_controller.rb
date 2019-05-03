class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def stripe
        user_id =  params[:data][:object][:client_reference_id]
        payment_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)
        render json: ""
    end

    def success
        redirect_to new_profile_path
    end

end


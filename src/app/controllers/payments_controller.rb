class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def new

        stripe_session = Stripe::Checkout::Session.create(
            customer_email: current_user.email
            payment_method_types: ['card'],
            client_reference_id: current_user.id,
            line_items: [{
                name: current_user.email,
                description: "One off Payment to HobbyBuddies",
                amount: 1000,
                currency: 'aud',
                quantity: 1,
            }],
            success_url: 'http://localhost:3000/payments/success',
            cancel_url: 'http://localhost:3000/cancel'
        )
        @stripe_session_id = stripe_session.id

    end



    def stripe
        user_id =  params[:data][:object][:client_reference_id]
        user = User.find(user_id)
        render json: ""
    end

    def success
        redirect_to new_profile_path
    end

end


class ApplicationController < ActionController::Base

    private

    # Using devise's built in method to redirect the user to payment after login/signup
    def after_sign_in_path_for(resource)
        new_payment_path
    end

    # A custom method to prevent the user from trying to create a second profile
    def one_profile
        if user_signed_in? and !current_user.profile.blank?
            redirect_to profile_path(current_user.profile)
        end
    end

    # A customer method to 
    def user_paid
        if user_signed_in? and !current_user.paid?
            redirect_to new_payment_path
        end
    end

    def profile_creation
        if user_signed_in?
            if current_user.paid? and current_user.profile.blank?
                redirect_to new_profile_path
            end
        end
    end
end

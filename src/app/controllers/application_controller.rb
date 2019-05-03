class ApplicationController < ActionController::Base

    private

    def after_sign_in_path_for(resource)
        new_payment_path
    end

    def one_profile
        if user_signed_in? and !current_user.profile.blank?
            redirect_to profile_path(current_user.profile)
        end
    end
    
    def user_paid
        if user_signed_in?
            unless current_user.paid?
                redirect_to new_payment_path
            end
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

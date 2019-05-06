class ApplicationController < ActionController::Base
    before_action :sign_up_path
    private

    # Using devise's built in method to redirect the user to payment after login/signup
    def after_sign_in_path_for(resource)
        if current_user.paid?
            profile_path(current_user.profile)
        else
            new_payment_path
        end
    end

    # A custom method to ensure the user follows the correct sign up path
    def sign_up_path
        path = "#{params[:controller]}/#{params[:action]}"
        if user_signed_in? and path != "devise/sessions/destroy"
            if !current_user.paid? 
                p params
                redirect_to new_payment_path unless path == "payments/new"
            elsif current_user.profile.blank? and path != "profiles/create"
                redirect_to new_profile_path unless path == "profiles/new"
            elsif !current_user.profile.blank?
                redirect_to profile_path(current_user.profile) if path == "profiles/new"
            end
        end
    end
end

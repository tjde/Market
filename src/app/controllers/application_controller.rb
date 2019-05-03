class ApplicationController < ActionController::Base
    private
    def after_sign_in_path_for(resource)
        new_payment_path
    end
    # def user_profile_redirect
    #     if user_signed_in? and current_user.profile.blank?
    #         redirect_to new_profile_path
    #     end
    # end
end

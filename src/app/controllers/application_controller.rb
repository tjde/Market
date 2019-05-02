class ApplicationController < ActionController::Base
    private
    def user_profile_redirect
        if user_signed_in? and current_user.profile.blank?
            redirect_to new_profile_path
        end
    end
end

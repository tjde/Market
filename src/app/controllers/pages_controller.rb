class PagesController < ApplicationController
    before_action :authenticate_user!, except: :home
    def home
    end

    def my_listings
        @created = current_user.profile.listings
        @attending = current_user.profile.attended_listings
        @favorites = current_user.profile.favorite_listings
    end

end



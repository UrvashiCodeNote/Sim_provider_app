class ApplicationController < ActionController::Base

    def current_user
        byebug
        return unless session[:serviceprovider_id]
        @current_user ||= ServiceProvider.find(session[:serviceprovider_id])
    end
end

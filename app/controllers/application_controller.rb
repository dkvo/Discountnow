class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    before_action :authenticate!
    
    
    def after_sign_in_path_for(user)
        if user && user.is_a?(Vendor)
            return edit_vendor_registration_path
            elsif user && user.is_a?(Customer)
            return dashboard_path
        end
    end
    
    
    def authenticate!
        if @current_user == current_customer
            :authenticate_customer!
            elsif @current_user == current_vendor
            :authenticate_vendor!
        end
    end
end
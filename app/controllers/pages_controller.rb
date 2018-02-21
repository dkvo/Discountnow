class PagesController < ApplicationController
    skip_before_action :authenticate! , only: [:index, :about, :faq, :contact]
    skip_before_action :authenticate! , only: [:index, :about, :faq, :contact]
    def index
        
    end
    
    def about
    
    end
    
    def faq
    
    end
    
    def contact
        
    end
    
    def dashboard


        if params[:search].present?
            @vendors = Vendor.near(params[:search], 50)
            @hash = Gmaps4rails.build_markers(@vendors) do |vendor, marker|
                marker.lat vendor.latitude
                marker.lng vendor.longitude
                marker.infowindow render_to_string(:partial => "/vendors/info", :locals => { :object => vendor})
                marker.picture ({
                "url" => "assets/marker2.png",
                "width" => 32,
                "height" => 32})
                marker.json ({title: vendor.name })
           end
        else
            @current_customer = current_customer
            @hash = Gmaps4rails.build_markers(@current_customer) do |customer, marker|
                marker.lat customer.latitude
                marker.lng customer.longitude
                marker.infowindow  "<br> you are here</br>"
                marker.picture ({
                "url" => "assets/marker2.png",
                "width" => 32,
                "height" => 32})
                marker.json ({})
                

            end
        end
    
    end
end

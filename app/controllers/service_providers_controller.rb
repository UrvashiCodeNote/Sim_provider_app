class ServiceProvidersController < ApplicationController

    def index
        byebug
    
        if current_service_provider.present?
            @address = current_service_provider.addresses
            @contact = 
        #   customer = current_service_provider.customer
          customer = Customer.all
        render json: { customer: customer.as_json }
        else
          render json: { error: "Service provider not found" }, status: :not_found
        end
    end

    def show
        byebug
        if current_service_provider.present?
            byebug
           @customer = current_service_provider.customer
        end
    end
  
end

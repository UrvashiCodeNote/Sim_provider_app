class ServiceProvidersController < ApplicationController

    def index  
      byebug  
        if current_service_provider.present?
            # @address = contact_books.addresses
           
            @customer = Customer.all
            @address = current_service_provider.addresses
            @contact = current_service_provider.contact_books
          
            render json: { 
              customer: @customer.as_json,
              contact: @contact.as_json,
              address: @address.as_json
            }
          else
            render json: { error: "Service provider not found" }, status: :not_found
          end
    end

    def customer_new
        byebug
        @customer = Customer.new
        @address = Address.new
    end

    def customer_create 
        byebug
        if current_service_provider.present?
            @customer =  current_service_provider.customers.create(service_params)
            # byebug
            customer = Customer.find_by(id: @customer_id)
            byebug
            @address = customer.address

        #   redirect_to 
            # render json: {      
            #   customer: @customer.as_json,
            #   address: @address.as_json
            # }
          else
            render json: { error: "Service provider not created" }, status: :not_found
          end
    end 

    def show
        byebug
        if current_service_provider.present?
            byebug
           @customer = current_service_provider.customer
        end
    end


    private
     def service_params
       byebug
       params.require(:customer).permit( 
        :first_name,:last_name, :email,
        :addresses_attributes => [:id, :city, :address])
     end
end


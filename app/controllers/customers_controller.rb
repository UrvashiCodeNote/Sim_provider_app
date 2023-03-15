class CustomersController < ApplicationController

    def index
        byebug 
        @customer = Customer.all
    end

    def show 
        
        @customer = Customer.find(params[:id])
    end

    def new
        @customer = Customer.new
    end

    def create
        byebug
        @customer = Customer.new(customer_params)
        if @customer.save
            redirect_to @customer
        else                                   
            render :new, status: :unprocessable_entity
        end
    end

    def edit
         @customer = Customer.find(params[:id])
    end
    
    def update
        @customer = Customer.find(params[:id])
    
        if @customer.update(customer_params)
          redirect_to @customer
        else
          render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @customer = Customer.find(params[:id])
        @customer.destroy
    
        redirect_to  @customer , status: :see_other
    end    

    private 

    def customer_params
      params.require(:customer).permit(:first_name,:last_name,:email,:aadhaar) 
    end
end

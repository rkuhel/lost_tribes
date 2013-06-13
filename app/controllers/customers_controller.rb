class CustomersController < ApplicationController 


  def index
    @customers = Customer.all
  end

  def create
    customer = Customer.create(params['customer'])
    if customer.save!
      redirect_to customers_path
    else
      redirect_to new_customer_path
    end
  end

   def new
    @customer = Customer.new
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def show
    @customer = Customer.find(params[:id])
  end

def update 
    customer = Customer.find(params[:id])
    if customers.update_attributes(params[:customer])
      redirect_to customers_path
    else
      redirect_to edit_customers_path 
    end
  end


  def destroy
    Customer.find(params[:id]).delete
    redirect_to customers_path
  end
end 






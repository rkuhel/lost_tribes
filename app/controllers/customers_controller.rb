class CustomersController < ApplicationController

def index
  @customer = Customer.new
end

def show
  @customer = Customer.find(params[:id])
end

def edit
  @customer = Customer.find(params[:id])
end

def update
  @customer = Customer.find(params[:id])

  if @customer.update(params[:customer])
    redirect_to action: :show, id: @customer.id
  else
    render 'edit'
  end
end

def new
  @customer = Customer.new
end

def create
  @customer = Customer.new(params[:customer])

  if @customer.save
    redirect_to action: :show, id: @customer.id
  else
    render 'new'
  end
end

def destroy
  @customer = Customer.find(params[:id])
  @customer.destroy

  redirect_to action: :index
end
end








  
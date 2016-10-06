class OrdersController < ApplicationController
before_action :authenticate_user!
  
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create(user_id: params[:user_id],
                          document_id: params[:document_id])

    render 'new.html.erb'
  end

  def show
    @order = Order.find(params[:id])
  end

  def edit
    @order = Order.fined(params[:id])
  end

  def update
    @order = Order.create(user_id: params[:user_id],
                          document_id: params[:document_id])

    flash[:success] = "Your order has been updated."
    redirect_to "/orders/#{@Order.id}"
  end

  def destroy
    @order = Order.find(params[:id])
    @order = Order.delete

    flash[:warning] = "Your order is deleted."
    redirect_to '/orders'
  end
end

class OrdersController < ApplicationController
before_action :authenticate_user!

  def create
    @order = Order.create(user_id: params[:user_id],
                          document_id: params[:document_id])

    flash[:success] = 'Order Created!'
    redirect_to "/orders/#{@order.id}"
  end

  def show
    @order = Order.find(params[:id])
    redirect_to '/' if @order.user_id != current_user.id
  end
  
end

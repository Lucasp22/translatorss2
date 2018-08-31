class OrdersController < ApplicationController
  # before_action :check_for_user, :only => [:new, :create, show]
  ## TODO: only client can create orders

  def index
    @orders = @current_user.orders
  end

  def show
    @order = Order.find params[:id]
  end

  def new
    @order = Order.new
  end

  def create
    # raise
    order = Order.create
    order.client_id = @current_user.id
    order.user_id = [params] service.user.id
    order.service_id =[params] service.id
    order.save
    redirect_to orders_path
  end

  private
    def order_params
      params.require(:order).permit(:user_id, :service_id, :comment)
    end
    def service_params
      params.require(:service).permit(:user_id, :service_id, :comment, :from_language_id, :to_language_id, :email)
    end

end

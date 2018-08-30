class OrdersController < ApplicationController
  # before_action :check_for_user, :only => [:new, :create, show]
  ## TODO: only client can create orders

  def index
    @orders = @current_user.orders
    raise 'hell'
  end

  def show
    @order = Order.find params[:id]
  end

  def new
    @order = Order.new
    ## TODO: just translators
  end

  def create
    order = Order.create order_params
    order.user_id = @current_user.id
    order.save!
    redirect_to orders_path
  end

  private
    def order_params
      params.require(:order).permit(:user_id, :service_id, :comment)
    end

end

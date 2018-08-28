class OrdersController < ApplicationController
  before_action :check_for_user, :only => [:new, :create]

  def index
    
  end

  def show
    @order = Order.find params[:id]
  end

  def new
    @order = Order.new
  end

  def create
    order = Order.create order_params
    order.user_id = @current_user.id
    service.save!

  end
end

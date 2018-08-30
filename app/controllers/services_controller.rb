class ServicesController < ApplicationController
  before_action :check_for_translator, :only => [:new, :create, :show]

  def index

    @services = @current_user.services
    # raise "hell"
  end

  def show
    @service = Service.find params[:id]

  end

  def new
    @service = Service.new
  end

  def create
    service = Service.create service_params
    service.user_id = @current_user.id
    service.save!
    redirect_to service
  end

  def destroy
    service = Box.find params[:id]
    service.destroy
    redirect_to services_path
  end


  private
    def service_params
      params.require(:service).permit(:title, :user_id, :price, :time_frame_id, :from_language_id, :to_language_id, :document_id)
    end

end

class ClientsController < ApplicationController
    before_action :check_for_admin, :only => [:index]

      def index
        @clients = Client.all

      end

      def show
        @client = Client.find params[:id]
        # @service = @user.services
        # session[:last_page] = request.env['PATH_INFO']
        # raise "hell"
      end


      def new
        @client = Client.new
      end



      def create

        @client = Client.new user_params
        if @client.save
          session[:user_id] = @client.id
          redirect_to root_path
        else
          render :new
        end
      end


      private
      def user_params
        params.require(:client).permit(:email, :password, :password_confirmation)
      end



end

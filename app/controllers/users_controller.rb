class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]

    def index
      @users = User.all
    end

    def show
      @user = User.find params[:id]
      @service = @user.services
      session[:last_page] = request.env['PATH_INFO']
    end


    def new
      @user = User.new
    end

    def create
      if params[:user][:translator] == "true"
         @user = User.new user_params
          if @user.save
            session[:user_id] = @user.id
            redirect_to root_path
          else
            render :new
          end
      else
        @client = Client.new client_params
        if @client.save
          session[:user_id] = @client.id
          redirect_to root_path
        else
          render :new
        end
      end
    end


    private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :translator)
    end
    def client_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end

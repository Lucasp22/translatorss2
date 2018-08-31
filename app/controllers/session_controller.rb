class SessionController < ApplicationController
  def new
  end

  def create
    # raise
    # get from params the user type
    if params["/login"]["translator"] == "true"
    #   login as user
      user = User.find_by :email => params[:email]
      if user.present? &&           user.authenticate(params[:password])
        session[:user_id] = user.id
        if session[:last_page].present?
          redirect_to session[:last_page]
        else
          redirect_to root_path
        end
      else
        flash[:error] = "Invalid email or password"
        redirect_to login_path
      end
    else
      client = Client.find_by :email => params[:email]
      if client.present? && client.authenticate(params[:password])
        session[:user_id] = client.id
        if session[:last_page].present?
          redirect_to session[:last_page]
        else
          redirect_to root_path
        end
      else
        flash[:error] = "Invalid email or password"
        redirect_to login_path
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end

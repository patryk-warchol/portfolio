class SessionsController < ApplicationController
  def new
    if logged_in?
      redirect_to controller: 'admins', action: 'home'
    end
  end

  def create
    user = Admin.find_by(login: params[:session][:login].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the admin page
      log_in user
      redirect_to controller: 'admins', action: 'home'
    else
      # Create an error message
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
end

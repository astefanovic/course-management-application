class SessionsController < ApplicationController

  def new 
  end

  def create
    coordinator = Coordinator.find_by(email: params[:session][:email].downcase)

    # If user exists and authenticates
    if coordinator && coordinator.authenticate(params[:session][:password])
      session[:coordinator_id] = coordinator.id
      flash[:success] = "Logged in"
      redirect_to coordinator
    else
      flash.now[:danger] = 'Invalid email or password'
      render 'new'
    end
  end

  # Log out
  def destroy
    if logged_in?
      log_out
      redirect_to root_url
    end
  end

end
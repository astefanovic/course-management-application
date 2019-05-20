class SessionsController < ApplicationController

  def new 
  end

  def create
    coordinator = Coordinator.find_by(email: params[:session][:email].downcase)

    if coordinator && coordinator.authenticate(params[:session][:password])
      session[:coordinator_id] = coordinator.id
      redirect_to coordinator
    else
      puts 'here'
      flash.now[:danger] = 'Invalid email or password'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
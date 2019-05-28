module SessionsHelper

  def current_coordinator
      if session[:coordinator_id]
        current_coordinator ||= Coordinator.find_by(id: session[:coordinator_id])
      end
  end

  def log_in(coordinator)
    session[:coordinator_id] = coordinator.id
  end

  def logged_in?
    !current_coordinator.nil?
  end

  def log_out
    session.delete(:coordinator_id)
    current_coordinator = nil
  end

  def logged_in_only
    if (!logged_in?)
      redirect_back(fallback_location: root_path)
      flash[:danger] = "Login or signup to complete this action"
    end    
  end
end
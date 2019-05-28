class ContactController < ApplicationController

  # GET /contact
  def index 
  end

  # POST /contact
  def send_email
    contact_params = params.require(:contact).permit(:sender, :message)
    ContactMailer.contact_us(contact_params[:sender], contact_params[:message]).deliver_now
    redirect_back(fallback_location: courses_path)
    flash[:success] = "Mail sent"
  end

end
class ContactController < ApplicationController

  # GET /contact
  def index 
  end

  # POST /contact
  def send_email
    params.require(:contact).permit(:sender, :message)
    ContactMailer.contact_us(params[:sender], params[:message])
    redirect_back(fallback_location: courses_path)
    flash[:success] = "Mail sent"
  end

end
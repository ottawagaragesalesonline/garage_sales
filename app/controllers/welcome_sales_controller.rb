class WelcomeSalesController < ApplicationController
  def home
  end

  def contact
  end
def send_mail 
Emailer::deliver_contact_email(params[:email]) 
end 

end

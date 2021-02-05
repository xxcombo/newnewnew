class WelcomeController < ApplicationController
  layout 'lock'
  def index
  end

  def open
   if params['title'].eql? "alohomora"
       redirect_to welcome_dooropen_path
     else 
       redirect_to welcome_dooropenfail_path
     end
  end
  
end



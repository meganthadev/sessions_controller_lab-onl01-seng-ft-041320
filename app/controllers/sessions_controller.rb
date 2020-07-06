class SessionsController < ApplicationController
  
  def new 
  end  
  
  def create 
    if session[:name] = params[:name]
     redirect_to '/'
   else
     redirect_to '/login'
   end 
  if sessions[:name].nil?
     flash.now[:error] = "Invalid email/password"
      redirect_to '/login'
  end 
end 
  
  def destroy 
    session.delete :name
  end  
  
  
end
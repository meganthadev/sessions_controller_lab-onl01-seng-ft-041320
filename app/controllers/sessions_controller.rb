class SessionsController < ApplicationController
  
  def new 
  end  
  
  def create 
    if session[:name].empty?
      redirect_to '/login'
      elsif 
        session[:name] = params[:name]
     redirect_to '/'
   else
     redirect_to '/login'
  end  
end 
  
  def destroy 
    session.delete :name
  end  
  
  
end
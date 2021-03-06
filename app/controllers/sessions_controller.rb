class SessionsController < ApplicationController
  def new
  end

  def create
    return hello if !params[:name] || params[:empty].empty?
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    session.delete :name
  end

end

class SessionsController < ApplicationController
  def new
  end

  def create
    # byebug
    # if !params[:name] != "" || params[:name].empty
    #   session[:name] = params[:name]
    #   redirect_to '/'
    # else
    #   redirect_to controller: 'application', action: 'hello'
    # end
    if !params[:name] || params[:name].empty?
      redirect_to(controller: 'sessions', action: 'new')
    else
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'sessions', action: 'new'
  end

end

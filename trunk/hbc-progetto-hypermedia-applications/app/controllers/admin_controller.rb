class AdminController < ApplicationController

 before_filter :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def index
    render layout: 'admin_layout'
  end

  def login
  end

  def logout
    session[:user_id] = nil
    session[:username] = nil
    flash[:notice]="You have been logged out"
    redirect_to :action => 'login'
  end

  def attempt_login
    authorized_user = authenticate(params[:username], params[:password])
    if authorized_user
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.name
      flash[:notice] = "You are now logged in."
      redirect_to(:action => 'index')
    else
      flash[:notice] = "Invalid username/password combination."
      redirect_to(:action => 'login')
    end
  end

  def authenticate(name="", psw="")
    user = Admin.find_by_name(name)
    if user && user.psw==psw
      return user
    else
      return false
    end
  end
end

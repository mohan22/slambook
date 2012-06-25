class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      flash[:notice] = "Logged in!"
      redirect_to friends_path,
    else
      flash[:notice] = "Invalid email or password"
      render "new"
    end
  end

def destroy
  session[:user_id] = nil
  redirect_to log_in_path, :notice => "Logged out!"
end


end



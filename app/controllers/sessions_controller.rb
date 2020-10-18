class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find(email: session_params[:email])
    
    if user&.authenticate(session_params[:password])
      # userがnilでない時、authenticateを呼び出す。
      session[:user_id] = user.id
      redirect_to root_path, notice: 'ログインしました'
    else
      render :new
    end
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end

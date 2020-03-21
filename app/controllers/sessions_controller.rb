class SessionsController < ApplicationController
  def new
  end

  def create

    user_params= params.require(:user)
    @user = User.where(mail: user_params[:mail]).first
    if @user and @user.authenticate(user_params[:password])
      session[:auth] = @user.to_session
      redirect_to profil_path, notice: 'connexion réussie'
    else
      redirect_to new_session_path, notice:'identifiants incorrects'
    end
  end

  def destroy
  end
end

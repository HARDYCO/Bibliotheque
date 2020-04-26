class UsersController < ApplicationController

  before_action :only_signed_in, only: [:edit]
  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:nom, :prenom, :mail, :adresse, :password, :password_confirmation)
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:auth] = @user.to_session
      redirect_to profil_path,notice: "compte créé avec succès"

    else
      redirect_to inscription_path,notice: "Erreur creation du compte"
    end
  end

  def edit
    #@user = User.last
    @user = current_user

  end
  def update
    @user = current_user
    user_params = params.require(:user).permit(:nom, :prenom,:mail,:adresse)
    if @user.update(user_params)
      redirect_to profil_path,notice: "compte modifié avec succès"
    else
      render :edit
    end
  end
    #
    #
end

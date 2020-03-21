class ApplicationController < ActionController::Base

helper_method :current_user

private
  def only_signed_in
    if !current_user
      redirect_to root_path, notice:"accès refusé =) "
    end
  end
  def current_user
      return nil if !session[:auth] || !session[:auth]['id']
      return @user if @user
      @user = User.find(session[:auth]['id'])
  end
end

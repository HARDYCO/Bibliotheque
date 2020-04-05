class ApplicationController < ActionController::Base

helper_method :current_user, :user_signed_in?

private
  def only_signed_in
    if !user_signed_in?
      redirect_to root_path, notice:"accès refusé =) "
    end
  end
  def current_user
      return nil if !session[:auth] || !session[:auth]['id']
      return @_user if @_user
      @_user = User.find(session[:auth]['id'])
  end
  def user_signed_in?
    !current_user.nil?
  end
end

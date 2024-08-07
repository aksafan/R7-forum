class ApplicationController < ActionController::Base
  before_action :set_current_user

  private

  def set_current_user
    @current_user = User.find(session[:current_user]) if session[:current_user]
  end
end

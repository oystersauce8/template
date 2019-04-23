class ApplicationController < ActionController::Base
  include Pundit
  before_action :authenticate_user_from_token!

private
  def authenticate_user_from_token!
    user = User.find_by_token(request.headers["Authorization"]) rescue nil
    if user
      sign_in user
    end
  end
end

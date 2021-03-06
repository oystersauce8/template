class PagesController < ApplicationController
  include Watermelon::Example
  before_action :authenticate_user!, only: [ :verify_devise, :verify_tokenauth ]

  def verify_bootstrap_4
  end

  def  verify_pundit
    authorize nil, policy_class: PagePolicy
  end

  def verify_fontawesome
  end

  def verify_lib
    render plain: example1
  end

  def verify_mail
  end

  def verify_react
  end

  def verify_devise
  end

  def verify_tokenauth
  end

  def verify_api_1
  end

  def verify_api_2
  end

  def verify_api_3
  end

  def verify_api_4
  end

  def log_error
  end
end

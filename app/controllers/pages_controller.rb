class PagesController < ApplicationController
  include Watermelon::Example
  def test_bootstrap
  end

  def  test_pundit
    authorize nil, policy_class: PagePolicy
  end

  def test_iconfonts
  end

  def test_lib
    render plain: example1
  end

  def test_mail
  end

  def test_react
  end

  def test_authentication_1
  end

  def test_authentication_2
  end

  def test_api_1
  end

  def test_api_2
  end

  def test_api_3
  end

  def test_api_4
  end

  def log_error
  end
end

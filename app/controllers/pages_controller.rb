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
end

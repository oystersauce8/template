Rails.application.routes.draw do
  mount API::Base => "/api"
  get 'pages/test_bootstrap'
  get 'pages/test_pundit'
  get 'pages/test_iconfonts'
  get 'pages/test_lib'
  get 'pages/test_mail'
  get 'pages/test_react'
  get 'pages/test_authentication_1'
  get 'pages/test_authentication_2'
  get 'pages/test_api_1'
  get 'pages/test_api_2'
  get 'pages/test_api_3'
  get 'pages/test_api_4'
  get 'pages/log_error--no-stylesheets'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

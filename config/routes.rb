Rails.application.routes.draw do
  devise_for :users
  get 'pages/verify_bootstrap_4'
  get 'pages/verify_pundit'
  get 'pages/verify_fontawesome'
  get 'pages/verify_lib'
  get 'pages/verify_mail'
  get 'pages/verify_react'
  get 'pages/verify_devise'
  get 'pages/verify_tokenauth'
  get 'pages/verify_api_1'
  get 'pages/verify_api_2'
  get 'pages/verify_api_3'
  get 'pages/verify_api_4'
  post 'pages/log_error'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

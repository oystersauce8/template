Rails.application.routes.draw do
  get 'pages/test_bootstrap'
  get 'pages/test_pundit'
  get 'pages/test_iconfonts'
  get 'pages/test_lib'
  get 'pages/test_mail'
  get 'pages/test_react'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

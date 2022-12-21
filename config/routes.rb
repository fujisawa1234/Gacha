Rails.application.routes.draw do
  namespace :user do
    get 'tweets/new'
    get 'tweets/show'
    get 'tweets/index'
  end
  devise_for :admin, controllers: {
    sessions: "admin/sessions"
  }
  
  devise_for :user, controllers: {
    registrations: "user/registrations",
    sessions: 'user/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

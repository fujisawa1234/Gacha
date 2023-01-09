Rails.application.routes.draw do
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  
  devise_for :user, skip: [:passwords], controllers: {
    registrations: "user/registrations",
    sessions: 'user/sessions'
  }
  
  namespace :admin do
  end
  
  scope module: :user do
    root :to => "homes#top"
    resources :tweets
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

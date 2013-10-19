SavelingWeb::Application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users do
    resources :items
  end
  resources :items
end

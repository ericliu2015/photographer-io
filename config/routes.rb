Iso::Application.routes.draw do
  resources :photographs do
    collection do
      get :explore
    end
  end

  devise_for :users, path: :account
  namespace :account do
    resources :collections do
      resources :photographs
    end

    resources :photographs

    root to: "photographs#index"
  end

  root to: "pages#home"
end

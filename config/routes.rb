Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :update, :destroy] do
    resources :hangouts
  end
end

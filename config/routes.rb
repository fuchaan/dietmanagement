Rails.application.routes.draw do
  devise_for :users
  root to: "menus#index"
  resources :menus, only:[:index, :edit, :new, :create, :update, :destroy, :show]
  resources :users, only:[:show]
end

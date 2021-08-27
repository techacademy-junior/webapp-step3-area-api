Rails.application.routes.draw do
  root 'prefectures#index'
  resources :prefectures
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :prefectures, only: [:index]
      resources :areas, only: [:index]
    end
  end
end

Rails.application.routes.draw do
  root "dashboard#index"
  resources :long_urls
end

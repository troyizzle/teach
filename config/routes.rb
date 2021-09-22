Rails.application.routes.draw do
  namespace :quiz do
    resources :forms
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

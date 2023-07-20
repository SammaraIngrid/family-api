Rails.application.routes.draw do
  resources :grandparents
  resources :parents
  resources :users
  resources :families
end

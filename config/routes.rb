Rails.application.routes.draw do
  resources :schedules
  resources :notes
  resources :meetings
  resources :emergency_contacts
  resources :addresses
  resources :insurances
  resources :profiles
  devise_for :users
  root 'welcome#index'
  resources :specialties
  resources :clinics
  resources :rooms
  resources :roles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

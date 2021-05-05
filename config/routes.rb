Rails.application.routes.draw do
  root 'welcome#index'
  
  devise_for :users

  resources :schedules
  resources :notes
  resources :meetings
  resources :emergency_contacts
  resources :addresses
  resources :insurances
  resources :profiles
  resources :specialties
  resources :clinics
  resources :rooms
  resources :roles
end

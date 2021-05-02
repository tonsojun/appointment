Rails.application.routes.draw do
  root 'welcome#index'
  resources :schedules
  resources :notes
  resources :meetings
  resources :emergency_contacts
  resources :addresses
  resources :insurances
  resources :profiles
  devise_for :users
  resources :specialties
  resources :clinics
  resources :rooms
  resources :roles
end

Rails.application.routes.draw do
  
  root to: "welcome#index"
  get 'welcome/index'
  resources :managefiles
  resources :incidentmanagements
  resources :incidentfiles
  resources :incidents
  resources :criticalities
  resources :applicationoperators
  resources :userareas
  resources :userapplications
  resources :applicationclients
  resources :areas
  resources :applications
  resources :userclients
  resources :clients
  resources :users
  resources :roles
  resources :vistaroles
  resources :vistaclientes
  resources :vistareportes
  resources :vistagestions
  get '/user/client/:id', to: 'users#user_client_index', as: "user_client_index"
  post '/user/client/:id', to: 'users#user_client_create', as: "user_client_create"
  get '/user/client/delete/:id', to: 'users#user_client_destroy', as: "user_client_destroy"

  get '/user/area/:id', to: 'users#user_area_index', as: "user_area_index"
  post '/user/area/:id', to: 'users#user_area_create', as: "user_area_create"
  get '/user/area/delete/:id', to: 'users#user_area_destroy', as: "user_area_destroy"
  
  get '/user/application/:id', to: 'users#user_application_index', as: "user_application_index"
  post '/user/application/:id', to: 'users#user_application_create', as: "user_application_create"
  get '/user/application/delete/:id', to: 'users#user_application_destroy', as: "user_application_destroy"

  get '/application/operator/:id', to: 'users#application_operator_index', as: "application_operator_index"
  post '/application/operator/:id', to: 'users#application_operator_create', as: "application_operator_create"
  get '/application/operator/delete/:id', to: 'users#application_operator_destroy', as: "application_operator_destroy"

  get '/client/application_client/:id', to: 'clients#client_application_client_index', as: "client_application_client_index"
  post '/client/application_client/:id', to: 'clients#client_application_client_create', as: "client_application_client_create"
  get '/client/application_client/delete/:id', to: 'clients#client_application_client_destroy', as: "client_application_client_destroy"

  devise_for :logins, controllers: {
    sessions: 'logins/sessions',
    registrations: 'logins/registrations'
  }
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

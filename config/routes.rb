Telerad::Application.routes.draw do

  root 'sessions#new'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'comments/new'

  get 'comments/show'

  get 'studies/new'
<<<<<<< HEAD
=======

  post 'emr_patient' => 'patients#emr'
>>>>>>> master

  resources :users
  resources :patients
  resources :studies

end

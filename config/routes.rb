Rails.application.routes.draw do
  get 'patients/index'

  get 'patients/new'

  get 'patients/create'

  get 'patients/show'

  get 'doctors/index'

  get 'doctors/new'

  get 'doctors/create'

  get 'doctors/show'

  get 'appointments/new'

  get 'appointments/create'

  get 'appointments/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctors
  resources :patients
  resources :appointments, only: [:show]
end

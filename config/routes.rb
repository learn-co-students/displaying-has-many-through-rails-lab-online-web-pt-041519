Rails.application.routes.draw do
  get 'patients/index'

  get 'patients/new'

  get 'patients/create'

  get 'patients/show'

  get 'patients/edit'

  get 'patients/update'

  get 'dcotors/index'

  get 'dcotors/show'

  get 'dcotors/new'

  get 'dcotors/edit'

  get 'dcotors/update'

  get 'dcotors/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctors
  resources :patients
  resources :appointments, only: [:show]
end

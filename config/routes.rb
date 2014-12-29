RvucounterRails::Application.routes.draw do

  root to: 'charges#new'

  resources :charges
  resources :codes

end

RvucounterRails::Application.routes.draw do

  root to: 'charges#new'

  resources :charges, only: [:index, :show, :new, :edit, :update, :destroy]

end

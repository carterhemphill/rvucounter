RvucounterRails::Application.routes.draw do

  root to: 'charges#new'

  resources :charges
  get 'codes/:code_category', to: 'codes#for_category', :defaults => { :format => :json }, :as => 'for_category'
  resources :codes



end

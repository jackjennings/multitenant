require 'rails'
require 'for_tenant'

Rails.application.routes.draw do

  resources :units

  for_tenant do
    # Multiple roots seem to require one to be named
    root to: 'buyers#show', as: :tenant_root
    resource :buyer, only: :show
  end

  root to: 'units#index'

end

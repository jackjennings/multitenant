class TenantSubdomainConstraint
  attr_accessor :excludes

  def initialize excludes: ['www', '']
    @excludes = excludes
  end

  def matches? request
    excludes.exclude?(request.subdomain)
  end
end

Rails.application.routes.draw do

  resources :units

  scope constraints: TenantSubdomainConstraint.new do
    # Multiple roots seem to require one to be named
    root to: 'buyers#show', as: :tenant_root
    resource :buyer, only: :show
  end

  root to: 'units#index'

end

class TenantSubdomainConstraint
  attr_accessor :excludes, :matches

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
    resource :buyer, only: :show
  end

end

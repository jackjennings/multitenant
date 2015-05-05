require 'tenant_subdomain_contraint'

module ActionDispatch::Routing
  class Mapper

    def for_tenant
      scope constraints: TenantSubdomainConstraint.new do
        yield if block_given?
      end
    end

  end
end

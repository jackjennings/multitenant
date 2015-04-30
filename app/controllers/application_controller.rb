class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def current_tenant
    # [TODO] Test this
    begin
      Buyer.from_param request.subdomain
    rescue
      MissingBuyer.new
    end
  end
  helper_method :current_tenant

end

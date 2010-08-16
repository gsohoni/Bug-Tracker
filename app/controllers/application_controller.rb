# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  helper :all # include all helpers, all the time
  layout 'application'
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  session_times_out_in 300, :after_timeout => :logout_with_flash
  
  def logout_with_flash
    logger.info "Logged out due to inactivity"
    flash[:notice] = "Inactive session. Login Again To Continue!"
    redirect_back_or_default('/')
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end

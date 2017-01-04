class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Overwriting the sign_out redirect path method, sending them to the signout page.
  def after_sign_out_path_for(resource_or_scope)
    '/signed_out'
  end

  #Tell user the time of signout.
  def signed_out
    @time = Time.now
  end
end
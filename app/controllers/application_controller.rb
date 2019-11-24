class ApplicationController < ActionController::Base
  # http_basic_authenticate_with name: 'sammy', password: 'shark', except: [:index, :show]
  
private
  def not_authenticated
  redirect_to login_path, alert: "Please login first"
end

end

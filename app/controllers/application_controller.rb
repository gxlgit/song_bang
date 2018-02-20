class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
# https://stackoverflow.com/questions/2385799/how-to-redirect-to-a-404-in-rails
#   def not_found
#     raise ActionController::RoutingError.new('Not Found')
#   end
end

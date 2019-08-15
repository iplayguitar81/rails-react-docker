class ApplicationController < ActionController::Base

#The reason this is necessary is that Rails has a built in mechanism to protect against
# cross site forgery (CSRF attacks).
# By default this sees Rails generate a unique token and validate its authenticity
# with each POST PUT PATCH DELETE request. If the token is missing, Rails will throw an exception.
# See:  https://hibbard.eu/rails-react-crud-app

#	protect_from_forgery with: :null_session


end

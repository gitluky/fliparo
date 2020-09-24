class ApplicationController < ActionController::Base
        include DeviseTokenAuth::Concerns::SetUserByToken
        protect_from_forgery unless: -> { request.format.json? }
        respond_to :json
end

class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper

    def default
        render 'layouts/default'
    end

end
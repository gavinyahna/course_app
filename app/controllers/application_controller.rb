class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def default
        render 'layouts/default'
    end

end
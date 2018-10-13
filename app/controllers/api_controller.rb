class ApiController < ActionController::Base
    include Knock::Authenticable
    before_action :authenticate_user
    #asigna formato por defecto a json
    before_action :set_format
    # Evita la verificacion del token csrf
    skip_before_action :verify_authenticity_token

    def set_format
        request.format = :json
    end
end
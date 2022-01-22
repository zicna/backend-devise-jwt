class Users::RegistrationsController < Devise::RegistrationsCOntroller
    respond_to :json

    private

    def respond_with(resource, _ots={})
        registar_success && return if resourc.presisted?

        registar_failed
    end

    def registar_success
        render json: { message: 'Signed up successfully' }
    end

    def register_failed
        render json: { message: 'Something went wrong.' }
    end
end

class ProfilesController < ApplicationController
    # before_action :teste

    def index
        @profiles = Profile.all
    end

    def show
        @profile = Profile.find(params[:id])
    end
    

    # protected
    # def teste
    #     devise_parameter_sanitizer.permit(:sign_up, keys: [:profile_name])
    # end
    
end

class ProfilesController < ApplicationController
    def new
        #form for user to fill out their own profile
        @user = User.find( params[:user_id] )
        @profile = @user.build_profile
    end
    
    def create
        @user = User.find( params[:user_id] )
        @profile = @user.build_profile(profile_params)
    end
    
    
    private
        def profile_params
            params.require(:profile).permit(:first_name, :last_name, :job_title, :phone_number, :description)
        end
end
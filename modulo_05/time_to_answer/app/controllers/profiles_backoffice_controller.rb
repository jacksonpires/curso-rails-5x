class ProfilesBackofficeController < ApplicationController
    before_action :authenticate_profile!
    layout 'profiles_backoffice'
end

class AdminsBackofficeController < ApplicationController
  before_action :authenticate_admin!
  layout 'admins_backoffice'
end

module UsersBackoffice::ProfileHelper
  def gender_select(user, current_gender)
    user.user_profile.gender == current_gender ? 'btn-primary' : 'btn-default'
  end
end

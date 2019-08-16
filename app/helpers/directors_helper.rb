module DirectorsHelper
  def user_is_authorized_for_director?(director)
    current_user && (current_user == director.user)
  end
end

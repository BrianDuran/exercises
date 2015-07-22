# It returns an array of ids, for example: [23, 20, 67, 3] for an specific role.
def get_user_ids(role = 1)
  users = User.where(:role => role)
  users.map(&:id)
end

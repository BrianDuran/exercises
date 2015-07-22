# Case 1
login = params[:login]
@users = User.where("login = #{login}")

# Case 2
User.destroy_all("name like '" + param[:name] + "'")


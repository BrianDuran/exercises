# app/models/user.rb
class User < ActiveRecord::Base
  belongs_to :role
end

# app/models/role.rb
class Role < ActiveRecord::Base
  has_many :users
end

###############

def print_users
  users = User.all # There are 102 users
  users.each do |user|
    puts "#{user.id} - #{user.name} - #{user.role.name}"
  end
end


#---------------------------------------------------------------

# app/models/user.rb
class User < ActiveRecord::Base
  belongs_to :role
end

# app/models/role.rb
class Role < ActiveRecord::Base
  has_many :users
end

###############

def print_users
  users = User.includes(:roles).all # There are 102 users
  users.each do |user|
    puts "#{user.id} - #{user.name} - #{user.role.name}"
  end
end

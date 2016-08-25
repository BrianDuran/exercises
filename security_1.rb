# Case 1
login = params[:login]
@users = User.where("login = #{login}")
=begin
@user = User.where('login = ?', params[:login])

Posible ataque
DELETE

id = '1 OR 1=1'
delete from User where id = 1 OR 1=1
=end

#------------------------------

# Case 2
User.destroy_all("name like '" + param[:name] + "'")

=begin 
no puede haber sql injection por las comillas
destroy from User where name like 'patito'
delete from User where name like '%' = it matches everything
change for something like
User.destroy_all('where name = ?, param[:name]')
=end 


class UserSerializer 
  include JSONAPI::Serializer 
  attributes :name, :email, :password
  # require 'pry'; binding.pry
  # def self.new(user)
  #   # require 'pry'; binding.pry
  #   # {
  #   # "data": {
  #   #   "type": "user",
  #   #   "id": user.id,
  #   #   "attributes": {
  #   #     "name": user.name,
  #   #     "email": user.email,
  #   #     "password": user.password
  #   #     }
  #   #   }
  #   # }
  # end 
end
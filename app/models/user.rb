class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable,  :confirmable,
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
#  acts_as_authentic
 # has_many :articles
 #
ROLES = %w[admin] 
# def role_symbols 
# [role.to_sym] 
# end 
 def role?(base_role) 
 role.present? && ROLES.index(base_role.to_s) <= ROLES.index(role) 
 end
 
end
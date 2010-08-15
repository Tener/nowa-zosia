class User < ActiveRecord::Base
  #aktywowane moduly z gemu devise
  #TODO: trzeba wylaczyc te ktore sa zbedne
  devise :registerable, :database_authenticatable, :recoverable,
         :trackable, :validatable #, :rememberable

  ROLES = %w[admin organiser speaker participant]

  attr_accessible :email, :password, :password_confirmation, :role
  
  
end
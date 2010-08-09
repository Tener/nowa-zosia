class User < ActiveRecord::Base
  #aktywowane moduly z gemu devise
  #TODO: trzeba wylaczyc te ktore sa zbedne
  devise :registerable, :database_authenticatable, :recoverable,
         :rememberable, :trackable, :validatable

  ROLES = %w[admin organiser speaker participant]

  attr_accessible :email, :password, :password_confirmation
  
  
end
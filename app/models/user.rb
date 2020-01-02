class User < ApplicationRecord
  attr_accessor :skip_password_validation  # virtual attribute to skip password validation while saving
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :ldap_authenticatable, :rememberable, :validatable

  def email_required?
    false
  end
  def password_required?
    return false if skip_password_validation
    puts "Password Not Skipped!"
    super
  end
end

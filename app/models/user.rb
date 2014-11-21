class User < ActiveRecord::Base
 validates :first_name, presence: true
 validates :last_name, presence: true
 
  def full_name
    "#{first_name} #{last_name}"
  end
 
  def self.users_names
    all.map(&:first_name)
  end 
end

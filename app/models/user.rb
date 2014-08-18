class User < ActiveRecord::Base
	has_many :posts
	validates :email, :name, :password, presence: true 
end

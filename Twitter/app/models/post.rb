class Post < ActiveRecord::Base
	belongs_to :user
	#Validaciones Caracteres Post
	validates :content, length: {maximum:140}
	validates :content, presence: true 

	#before_save :minuscula
	#include PostsHelper

	geocoded_by :direction   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates
end

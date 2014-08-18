class Post < ActiveRecord::Base
	has_many :comments
	validates :name, :post_type, :status, :text, presence: true 
	before_save :before_save, on: [ :create]
	before_create :before_create
	protected
	def before_create

		puts "This is before_create",'\n'
		
	end
	def before_save
		puts " This is before save ..."
		if self.status== "1"
			self.status = "Enabel"
		else 	
			self.status = "Disabel"
		end	
	end
end

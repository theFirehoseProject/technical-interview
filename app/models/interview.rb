class Interview < ActiveRecord::Base
	has_and_belongs_to_many :questions
	has_and_belongs_to_many :users

#	validates :title, :description, :presence => true, :uniqueness => true
#	validates :title, length: { in: 5..50 }
#	validates :description, length: { in: 20..300 }


	def claimed?(user)
		self.users.include?(user)
	end

end

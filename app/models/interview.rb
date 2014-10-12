class Interview < ActiveRecord::Base
	has_and_belongs_to_many :questions
	has_and_belongs_to_many :users

	validates :title, :description, :presence => true, :uniqueness => true
	validates :title, length: { in: 5..25 }
	validates :description, length: { in: 20..200 }


	def claimed?(user)
		self.users.include?(user)
	end

end

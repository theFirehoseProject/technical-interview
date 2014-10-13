class Interview < ActiveRecord::Base
	has_and_belongs_to_many :questions
	has_and_belongs_to_many :users

	validates :title, length: { in: 5..50 }, :presence => true, :uniqueness => true
	validates :description, length: { in: 20..300 }, :presence => true, :uniqueness => true

	def claimed?(user)
		self.users.include?(user)
	end

end

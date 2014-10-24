class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :interviews

	def unclaimed_interview
		my_interviews = self.interviews
		all_interviews = Interview.all
		unclaimed_interviews = all_interviews - my_interviews
		unclaimed_interviews.shuffle.first
	end

	


end

class Interview < ActiveRecord::Base
	has_and_belongs_to_many :questions
	has_and_belongs_to_many :users

end

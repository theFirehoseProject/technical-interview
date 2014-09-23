class Topic < ActiveRecord::Base
	has_many :questions

	def self.collection_items
		Topic.all.collect do |topic|
			[topic.title, topic.id]
		end
	end
end

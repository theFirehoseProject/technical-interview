class AddInterviewsQuestionsTable < ActiveRecord::Migration
  def change
  	create_table :interviews_questions, id: false do |iq|
  		iq.belongs_to :interview
  		iq.belongs_to :question
  	end	
  end
end

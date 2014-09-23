class DeleteQuestionColumnFromInterviews < ActiveRecord::Migration
  def change
  	remove_column :interviews, :question_id
  end
end

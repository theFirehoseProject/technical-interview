class AddQuestionRelationToInterviews < ActiveRecord::Migration
  def change
  	add_column :interviews, :question_id, :integer
  end
end

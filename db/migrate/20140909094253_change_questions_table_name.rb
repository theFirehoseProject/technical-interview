class ChangeQuestionsTableName < ActiveRecord::Migration
  def change
  	rename_table :admin_questions, :questions
  end
end

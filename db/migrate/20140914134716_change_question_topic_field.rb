class ChangeQuestionTopicField < ActiveRecord::Migration
  def change
  	remove_column :questions, :topic
  end
end

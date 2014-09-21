class AlterQuestionAddTopicId < ActiveRecord::Migration
  def change
  	add_column :questions, :topic_id, :integer
  	add_index :questions, :topic_id
  end
end

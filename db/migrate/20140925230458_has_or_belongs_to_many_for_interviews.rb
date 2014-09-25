class HasOrBelongsToManyForInterviews < ActiveRecord::Migration
  def change
    create_table :interviews_users, id: false do |t|
      t.integer :interview_id
      t.integer :user_id
    end
    add_index "interviews_users", [:interview_id, :user_id]
    add_index "interviews_users", :user_id
  end
end

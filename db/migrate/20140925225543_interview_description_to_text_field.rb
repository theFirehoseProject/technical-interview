class InterviewDescriptionToTextField < ActiveRecord::Migration
  def change
    change_column :interviews, :description, :text
  end
end

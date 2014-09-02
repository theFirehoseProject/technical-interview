class CreateAdminQuestions < ActiveRecord::Migration
  def change
    create_table :admin_questions do |t|
    	t.string :topic
    	t.text :problem
    	t.text :solution
    	
      t.timestamps
    end
  end
end
